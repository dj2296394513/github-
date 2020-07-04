//导入express 模块
const express = require('express')
const bodyParser = require('body-parser')
const path = require('path')
var multer = require('multer')

//用包，帮我们创建一个uploads文件夹
var upload = multer({ dest:'uploads/'})

//导入我们自己写入的模块  (需要拼节绝对路径)
const db = require(path.join(__dirname,'utils','db.js'))


//创建一个服务器
const app = express()
app. use(express.static('www'))
app. use(express.static('uploads'))

//用包
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({extended: false }))


//写接口

//1.用户登录
app.post('/login', (req, res)=> {
    //1.1接收用户传递过来的用户名和密码
    let {username,password} = req.body;//对象解构语法
    //1.2 判断账号和密码是否正确
    //实际开发的时候判断流程:把账号和密码发到数据库中去验证。
    if(username == 'admin' && password  =='123456' ){
        res.send({
            code:200,
            msg:'登录成功!'
        })
    }else{
        res.send({
            code:400,
            msg:'账号密码不对!'
        })
    }

})

//2. 获取所有英雄
app.get('/getAllHero', (req, res)=> {
    //调用我们自己写的db.js模块，调用他里面的方法获取所有的英雄
    let list = db.getHeros();
    //返回
    res. send( {
        code: 200,
        data: list
    });
})

//3.新增英雄
app.post('/add',upload.single('icon'), (req, res)=> {
    console.log(req.file);//文件参数就在这里{filename: ' 0fc8f164bd6f36d6d6557c98fa10cled'，}
    console.log(req.body);;//文本参数就在这里.{name :'千里'，skill: ' 飘起来'}

    //用变量保存一下
    let {name,skill} = req.body;
    let icon = req.file.filename;

    //把这个新增的英雄的数据， 用我们自己写的插件db.js存起来.
    let result = db.addHero({
        name,
        skill,
        // icon
        //icon:path.join('http://127.0.0.1:4399/',icon)
        icon: "http://127.0.0.1:4399/" + icon
    })
    //判断
    if(result == true){
        res.send({
            code:200,
            msg:'新增成功!'
        })
    }else{
        res.send({
            code:400,
            msg:'新增失败!'
        })
    }
})

//4.删除英雄
app.get('/delete', (req, res)=> {
    // 接收前端传递过来的要删除的英雄的id.
    let {id} = req.query;
    // console.log(id);
    //用我们自己 写的db. js这个文件去删除英雄
    let result = db.deleteHeroById(id)
    //判断
    if(result == true){
        res. send( {
            code: 200,
            msg: '删除成功!'
        });
    }else {
        res.send({
            code: 200,
            msg: '删除成功!'
        });
    }
})

//5.根据id获取英雄
app.get('/getHeroById', (req, res)=> {
    //获取前端传递过来,需要编辑的这个英雄的id.
    let {id} = req. query; //解构赋值
    //用db.js来获取该id下的英雄详细信息.
    db.getHeroById(id);
    //判断
    if(result != false){
        res . send({
            code: 200,
            msg: '获取成功',
            data: result
        });
    }else {
        res.send({
            code: 400,
            msg: '获取失败'
        });
    }
})

//6.编辑英雄
app.post('/edit',upload.single('icon'), (req, res)=> {
    // 用模块multer来接收用户编辑之后的(英雄id,英雄名,英雄技能，英雄头像)
    //文件(英雄头像) req. file. filename;
    //非文件参数req.body
    // console.log(req.file.filename);//36931c1a543eb24357feff9ee47ea58f
    // console.log(req.body);//{ id: '4', name: '测试', skill: 'wc' }
    let icon = req. file.filename;
    let {id, name, skill} = req . body;
    //用db. js来处理
    let result = db.editHero({
        id,
        name,
        skill,
        icon: "http://127.0.0.1:4399/" + icon
    });
    //判断
    if(result == true){
        res. send( {
            code: 200,
            msg:
                '修改成功'
        });
    }else {
        res. send({
            code:200,
            msg: '修改失败'
        });
    }


})




//启动服务器
app.listen(4399,()=>{
    console.log('服务器开启了');
})