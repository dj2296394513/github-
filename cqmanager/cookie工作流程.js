//1.导入模块
const express = require( ' express' );

//2.创建服务器
const app = express();

//3.写接口
//3.1登录接口
app.get('./login',(req,res)=>{
    //假如现在这里已经验证了账号和密码，是正确的.是可以登录.
    //那服务器就应该把cookie响应回去.
    ses.writeHead(200, {
        'Content-Type': 'text/plain; charset=utf-8',
        "Set-Cookie": ' userid=123456'//实际开发的时候,肯定发过去的是密文.
    })
    res.end()
})

//3.2 查询接口
app.get('./list',(req,res)=>{
    //接收一下客户端(浏览器端)自动带过来的cookie
    console. log(req . headers);
    res. send( '666');
})


//4.开启服务器
app.listen(4399,()=>{
    console.log('服务器开启');
})