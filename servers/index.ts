import express from "express";
import path from "path";
import capitalRouter from "./src/route/mobile/capital";

const app = express();
app.use(express.json());
app.use(express.urlencoded({extended:true}))
app.use("/static", express.static(path.resolve(__dirname, "./web/public")));

app.get("/helloWorld", (req, res)=>{
    res.send("hello world");
})

app.use("/mobile", capitalRouter);

app.listen(8090, ()=>{
    console.log("服务器启动");
})