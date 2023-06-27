import React, { ReactNode } from 'react'
import style from "./index.less";
import { Card, Descriptions, Divider } from 'antd';

const timeInfo = {
  "2023-06-27":{
    "吃饭": 30,
    "睡觉": 480,
    "上班":480
  },
  "2023-06-26":{
    "吃饭":30,
    "睡觉":480
  }
}

const Time = () => {
  const date = Object.keys(timeInfo);
  const cards = date.map((date)=>{
    return (
      <Card 
        title={date}
        key={date}
      >
        <Descriptions column={1}>
          {
            Object.entries(timeInfo[date]).map(item=>(
              <Descriptions.Item 
                label={item[0]}
                key={item[0]}
              >{item[1] as ReactNode}</Descriptions.Item>
            ))
          }
        </Descriptions>
      </Card>
    )
  });
  return (
    <div className={style.time}>
      {cards}
    </div>
  )
}

/**
 * 干什么事：花了多少时间
 */
export default Time
