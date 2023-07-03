import React, { useEffect, useRef, useState } from 'react'
import style from "./index.less"
import { Button, Input, List } from 'antd';
import TextArea from 'antd/es/input/TextArea';
import {MsgType} from "./type";
import {io} from "socket.io-client";
import dayjs from 'dayjs';
import VirtualList from 'rc-virtual-list';

const userInfo = {
  userName: Math.random() * 10 + ""
}
let socket = null;
let dom:Element;
const Chart = () => {
  const [msgs, setMsgs] = useState<MsgType[]>([]);
  const [content, setContent] = useState("");
  const ref = useRef();
  
  useEffect(()=>{
    dom = document.getElementsByClassName("rc-virtual-list-holder")[0]
  }, []);

  useEffect(()=>{
    socket = io("http://localhost:8095");
    //使用了回调函数，在回调函数中msgs使用指向页面初始化的msgs，
    //如果直接通过msgs获取新值，而不更新，msgs的话，新值始终为第一次的msgs+获取的值
    socket.on("msg", (msg:MsgType)=>{
      msgs.push(msg);
      setMsgs([...msgs]);
      dom.scrollBy(0, 500);
    })
    // dom.scroll(0, dom.getBoundingClientRect().height)
  }, []);

  return (
    <div className={style.chart}>
      <div>
        <div className={style.content}>
          <List>
            <VirtualList
              data={msgs}
              height={500}
              itemHeight={50}
              itemKey="date"
            >
              {(item, index)=>(
              <List.Item>
                <List.Item.Meta
                  title={dayjs(item.date).format("YYYY-MM-DD")}
                  description={item.content}
                />  
              </List.Item>
            )}
            </VirtualList>
          </List>
        </div>
        <div className={style.sendContent}>
          <TextArea
            style={{ height: "32px", resize: 'none' }}
            value={content}
            onChange={(e)=>{
              if(e.target.value !== "\n"){
                setContent(e.target.value);
              }
            }}
            autoSize={{maxRows:3}}
            onPressEnter={(e)=>{
              socket.emit("msg", {name:userInfo.userName, date:Date.now(), content: content});
              setContent("");
            }}
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

/**
 * 虚拟列表进行消息的展示，避免DOM过多，影响渲染效率
 * 
 */
