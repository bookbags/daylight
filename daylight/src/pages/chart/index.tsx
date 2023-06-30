import React, { useEffect, useState } from 'react'
import style from "./index.less"
import { Button, Input, List } from 'antd';
import TextArea from 'antd/es/input/TextArea';
import {MsgType} from "./type";
import {io} from "socket.io-client";
import dayjs from 'dayjs';

const userInfo = {
  userName: Math.random() * 10 + ""
}
let socket = null;

const Chart = () => {
  const [msgs, setMsgs] = useState<MsgType[]>([]);
  const [content, setContent] = useState("");
  useEffect(()=>{
    socket = io("http://localhost:8095");
    //使用了回调函数，在回调函数中msgs使用指向页面初始化的msgs，
    //如果直接通过msgs获取新值，而不更新，msgs的话，新值始终为第一次的msgs+获取的值
    socket.on("msg", (msg:MsgType)=>{
      msgs.push(msg);
      setMsgs([...msgs]);
    })

  }, []);
  return (
    <div className={style.chart}>
      <div>
        <div className={style.content}>
          <List
            itemLayout='horizontal'
            dataSource={msgs}
            renderItem={(item, index)=>(
              <List.Item>
                <List.Item.Meta
                  title={dayjs(item.date).format("YYYY")}
                  description={item.content}
                />  
              </List.Item>
            )}
          >
          </List>
        </div>
        <div className={style.sendContent}>
          <TextArea
            style={{ height: "32px", resize: 'none' }}
            value={content}
            onChange={(e)=>{setContent(e.target.value)}}
          ></TextArea>
          <Button 
            shape='round'
            onClick={
              ()=>{
                socket.emit("msg", {name:userInfo.userName, date:Date.now(), content: content});
                setContent("");
              }
            }
          >send</Button>
        </div>
      </div>
    </div>
  )
}

export default Chart;
