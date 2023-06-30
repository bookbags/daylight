import express from "express";
import {createServer} from "http";
import path from "path";
import capitalRouter from "./src/route/mobile/capital";
import {Server} from "socket.io";
import {manageSocket} from "./src/websocket";

const app = express();
const httpServer = createServer(app);
const io = new Server(httpServer, {cors:{origin: "http://localhost:8080"}});

app.use("*", (req, res, next)=>{
    res.setHeader("Access-Control-Allow-Origin", "*");
    next();
})

manageSocket(io);

app.use(express.json());
app.use(express.urlencoded({extended:true}))
app.use("/static", express.static(path.resolve(__dirname, "./web/public")));

app.get("/helloWorld", (req, res)=>{
    res.send("hello world");
})

app.use("/mobile", capitalRouter);

httpServer.listen("8095", ()=>console.log("服务器启动"))