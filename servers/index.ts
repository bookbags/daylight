import express from "express";
import {createServer} from "http";
import path from "path";
import capitalRouter from "./src/route/mobile/capital";
import {Server} from "socket.io";
import {manageSocket} from "./src/websocket";
import connection from "./src/database/init";

const app = express();
const httpServer = createServer(app);
const io = new Server(httpServer, {cors:{origin: "http://localhost:8080"}});

app.use("*", (req, res, next)=>{
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
    next();
})

manageSocket(io);

app.use(express.json());
app.use(express.urlencoded({extended:true}))
app.use("/static", express.static(path.resolve(__dirname, "./web/public")));

app.get("/helloWorld", (req, res)=>{
    res.send("hello world");
});

app.post("/login", (req, res)=>{
    const body = req.body;
    connection.query(`
        select name, age, avatar from User where name = ? and password = ?
    `,[body.name, body.pwd], function(err, result){
        if(!err){
            console.log(`${body.name} 登录成功`);
        }else{
            console.log(`${body.name} 登录失败`);
        }
        res.send(result);
    })
})

app.use("/mobile", capitalRouter);

httpServer.listen("8095", ()=>console.log("服务器启动"))

