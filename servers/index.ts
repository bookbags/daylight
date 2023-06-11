import express from "express";

const app = express();

app.listen(8090, ()=>{
    console.log("服务器启动");
})