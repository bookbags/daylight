import express from "express";

const router = express.Router();

router.post("/capital", (req, res)=>{
    console.log(req.body);
    res.send("hello world");
});

export default router;