import express from "express";

const app = express();

app.connect("*", (req, res)=>{
    res.send("hello world");
})

app.listen(8090, ()=>{
    console.log("服务器启动");
})