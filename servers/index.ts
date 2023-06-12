import express from "express";
import path from "path";

const app = express();

app.use("/static", express.static(path.resolve(__dirname, "./web/public")));

app.get("/helloWorld", (req, res)=>{
    res.send("hello world");
})

app.listen(8090, ()=>{
    console.log("服务器启动");
})