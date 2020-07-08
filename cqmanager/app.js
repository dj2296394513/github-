
// 1.导入模块
const express = require("express");
const hm = require("mysql-ithm");
const cors = require("cors");
const multer = require("multer");
var bodyParser = require("body-parser");
var svgCaptcha = require('svg-captcha'); //验证码插件
const cookieSession = require("cookie-session");

//帮你创建一个uploads文件夹
var upload = multer({ dest: "uploads/" });


// 4.2 express-fileupload：接收文件数据，给req添加属性files，存储解析好的文件
const fileUpload = require('express-fileupload');
// app.use(fileUpload());

// 4.3 mysql-ithm数据库操作
// (2) 连接数据库
hm.connect({
    host: 'localhost',//数据库地址
    port: '3306',
    user: 'root',//用户名，没有可不填
    password: '123',//密码，没有可不填
    database: 'cqmanager503'//数据库名称
});
// (3) 创建Model(表格模型：负责增删改查)
// 英雄模型
let heroModel = hm.model("hero", {
    heroName: String,
    heroSkill: String,
    heroIcon: String,
    isDelete: String,
});
// 用户模型
//如果table表格存在则连接，插入操作的时候不存在则自动创建
//我们现在是查询操作，所以不会自动建表，所以我们要先去建好这张用户表.
let userModel = hm.model('users', {
    username: String,
    password: String
});


// -------------------------------------------------

// 2.创建服务器
let app = express();

// ----------------------------------------------------

// 3.托管静态资源
//托管静态网页
app.use(express.static('www'));
app.use(express.static('uploads'));
//托管英雄图像
app.use(express.static('static'));

// ---------------------------------------------------------

// 4.配置中间件
app.use(cors());
// 4.1 body-parser：解析post参数,给req添加属性body，存储解析好的post参数
app.use(bodyParser.urlencoded({ extended: false }));
// 4.4 cookie-session中间件：给req添加session成员
app.use(cookieSession({
    name: 'session',
    keys: ['1', '2'],//加密（盐）
    // 有效期
    maxAge: 7 * 24 * 60 * 60 * 1000 // 7*24 hours
}));


// --------------------------------------------------------

// 5.路由(接口文档)
// 5.0 判断有没有登录
app.get("/isLogin", (req, res) => {
    //如果你登录了， 那你响应回去的就是有内容的.
    //如果你没有登录，那你响应回去的就是没有内容的.
    res.send(req.session.user);
});

// --------------------------------------------------------

// 5.1 查询英雄列表(查询没有删除所有的英雄)
app.get('/hero/list', (req, res) => {
    //a.有可能会传一个要查询的英雄名字参数过来，也有可能什么参数都没有.
    // 查看当前的cookie,直接来访问这个list接口，那这个cookie就是undefined.
    //如果登录了，来访问这个list页面，那这个cookie就是有值的.
    //那现在我们就可以判断这个有没有值，从而判断你有没有登录，
    // console.log(req.session.user);


    // (1) 请求
    let { search } = req.query;
    //console. log(search);//有查询参数就是有值的，没有查询参数就是undefined.
    // b.判断
    // (2) 处理(查询数据库)
    if (!search) {
        //如果进到这里来了， 说明没有查询参数，我就要查询出所有的英雄。
        heroModel.find('isDelete="false" ',(err, results) => {
            if (err) {
                res.send({
                    code: 500,
                    msg: '服务器内部错误'
                });
            } else {
                // (3) 响应
                res.send({
                    code: 200,
                    heros: results
                })
            }
        });
    } else {
        //进到这里来，说明有查询参数
        //设计到了一个模糊查询，假如名字中包含有  魔  的都查出来
        //模糊查询的语法:字段 like "%查询的关键词%”
        //还有一个并且语法 and isDelete = 'false'

        // 如果有search，则根据条件查询数据(包含查询)
        heroModel.find(`heroname like "%${search}%" and isDelete="false"`, (err, results) => {
            if (err) {
                res.send({
                    code: 500,
                    msg: '服务器内部错误'
                });
            } else {
                // (3) 响应
                res.send({
                    code: 200,
                    heros: results
                })
            }
        });
    }
});

// ----------------------------------------------

// 5.2 查询英雄的详情（编辑的第一步：根据ID查询，显示到编辑页）
app.get("/hero/info", (req, res) => {
    // a. 接收传递过来的英雄ID
    let { id } = req.query;
    // b.根据id查询英雄的详细信息
    heroModel.find(`id=${id} and isDelete="false"`, (err, results) => {
        if (err == null && results.length != 0) {
            res.send({
                code: 200,
                data: results[0],
            });
        } else if (err) {
            res.send({
                code: 500,
                mgs: "服务器内部错误"
            });
        } else {
            res.send({
                code: 201,
                mgs: "没有此英雄，或已被删除！",
            });
        }
    });
});

// -----------------------------------------------------

// 5.3 编辑英雄
app.post("/hero/update", upload.single("heroIcon"), (req, res) => {
    //如果不改头像，只改名字和技能.我们希望这种需求也是可以的。
    //赋值
    let { id, heroName, heroSkill } = req.body;
    let obj = {
        heroName,
        heroSkill,
    };
    //如果修改了头像，那obj对象里面就有id, heroName，heroSkill , heroIcon
    //如果没有修改头像，那obj对象里面就只有id,heroName, heroSkill
    if (req.file != undefined) {
        //能够进到这里来 ，说明传了修改后的头像进来。
        obj.heroIcon = 'http://127.0.0.1:4399/' + req.file.filename;
    }
    //调用mysq1-ithm模块中的方法，把数据更新到数据库中.
    heroModel.update(`id=${id}`, obj, (err, results) => {
        if (err) {
            res.send({
                code: 500,
                msg: "服务器内部错误"
            });
        } else {
            res.send({
                code: 200,
                msg: "修改成功",
            });
        }
    });
});

// ----------------------------------------------------------

// 5.4 删除英雄（软删除，实际上修改的是当前id的英雄isDelete为true）
app.post("/hero/delete", (req, res) => {
    // a.接收前端传递过来的要删除的英雄id
    let  { id } = req.body;
    //b.调用mysql-ithm模块中的方法，来完成
    heroModel.update(`id=${id}`, { isDelete: "true" }, (err, results)=> {
        if (err) {
            res.send({
                code: 500,
                msg: "服务器内部错误"
            });
        } else {
            res.send({
                code: 200,
                msg: "删除成功"
            });
        }
    });
});

// ---------------------------------------------------------------------

// 5.5 新增英雄
app.post("/hero/add", upload.single("heroIcon"), (req, res) => {
    //a.接收用户新增的英雄名，英雄技能，英雄头像
    let { heroName, heroSkill, isDelete = "false" } = req.body;
    let heroIcon = req.file.filename;
    //b.插入到数据库中
    heroModel.insert(
        { heroName, heroSkill, heroIcon, isDelete },
        (err, results) => {
            if (err) {
                res.send({
                    code: 500,
                    msg: "服务器内部错误" + err,
                });
            } else {
                res.send({
                    code: 200,
                    msg: "新增成功",
                });
            }
        }
    );
});

// ---------------------------------------------------------

// 5.6 验证码
// svg-captcha：验证码插件（因为不是每个地方都会用到，不需要像中间件那样要用app.use()）
// (2)声明全局变量存储验证码文本
//b.搞一个全局变量来保存一下这个验证码文字
let captchaText = '';
//c.使用
app.get('/captcha', (req, res) => {
    // //创建一个验证码
    var captcha = svgCaptcha.create();
    // console.log(captcha);
    // 文本：服务器存起来用于注册接口验证
    //返回验证码
    captchaText = captcha.text;
    // 图片：响应给客户端
    // 返回验证码，实际上就是一个svg格式的图片
    res.type('svg');
    res.status(200).send(captcha.data);
});

// ----------------------------------------------------------------

// 5.7 用户注册
app.post("/user/register", (req, res) => {
    //a.获取前端传递过来的用户名/加密的密码/验证码
    let { username, password, code } = req.body;
    console.log(username, password, code);
    //b.验证验证码输入的是否正确.
    if (code.toLocaleLowerCase() != captchaText.toLocaleLowerCase()) {
        res.send({
            code: 402,
            msg: "验证码错误",
        });
    } else {
        //进到这里来了， 说明验证码是对的，那就要开始注册了.
        //要不要去数据库中判断一下以前这个用户名是否已经被注册了?
        userModel.find(`username="${username}"`, (err, results) => {
            if (err) {
                res.send({
                    code: 500,
                    msg: "服务器内部错误-查询用户名是否存在",
                });
            } else {
                //说明可以查询成功，但是还要看看查出来有没有结果.
                if (results.length > 0) {
                    // 用户名是否存在
                    res.send({
                        code: 401,
                        msg: "用户名已存在",
                    });
                } else {
                    //该用户名不存在，不存在就往册呀(增加/插入操作)
                    userModel.insert(
                        {
                            username,
                            password,
                        }, (err, results) => {
                            // 注册时的错误判断
                            if (err) {
                                res.send({
                                    code: 500,
                                    msg: "服务器内部错误-注册时错误'",
                                });
                            } else {
                                res.send({
                                    code: 200,
                                    msg: "注册成功",
                                });
                            }
                        }
                    );
                }
            }
        });
    }
});
// -------------------------------------------------------------

// 5.8 用户登录
app.post("/user/login", (req, res) => {
    //a.先获取用户登录时候，传递过来的用户名和加密后的密码
    let { username, password } = req.body;
    //b.去数据库中判断有没有这样的账号和密码.
    userModel.find(`username="${username}" and password="${password}"`, (err, results) => {
        //判断
        if (err) {
            res.send({
                code: 500,
                msg: "服务器内部错误",

            });
        } else {
            //判断查成功的结果，有没有数据
            if (results.length > 0) {
                // 发送的session的键是user，值是一个对象，对象里面包含账号密码.
                req.session.user = { username, password };
                res.send({
                    code: 200,
                    msg: "登录成功",
                });
            } else {
                res.send({
                    code: 401,
                    msg: "账号或密码错误",
                });
            }
        }
    });
});

// --------------------------------------------------------------

// 5.9 退出登录
app.get('/logout', (req, res) => {
    // (1) 清除session
    req.session = null;
    // (2) 使用重定向技术刷新首页
    res.writeHead(302, {
        Location: './login.html'
    });
    res.end();
});

// ---------------------------------------------------------------

// 6.开启服务器
app.listen(4399, () => {
    console.log('服务器开启成功');
});

// ---------------------------------------------------------------

