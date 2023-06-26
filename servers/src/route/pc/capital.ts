import express from "express";

const router = express.Router();

router.put("/capital", (req, res)=>{
    console.log(req.body);
    res.send("hello world");
});

router.get("/capital", (req, res)=>{
    console.log(req.body);
    res.send("hello world");
});

export default router;