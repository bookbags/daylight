import React, { useState } from 'react';
import style from "./index.less";
import { Col, Descriptions, Row } from 'antd';
import MyModal from "./MyModal";


const propertyInfos = {
  "贷款":{
    "国家助学贷款": 34000,
    "度小满": 0,
    "京东白条": 3141.22
  },
  "收入":{
    "工资":5000
  },
  "每月固定开销":{
    "房租":2000,
    "水电气":100,
    "利息":500,
    "吃喝用":1000
  },
  "盈余":{
    "剩余":1500,
    "存款":400
  }
}
let updateProperty = {};
const Money = () => {
  const [modalState, setModalState] = useState(false);
  const [propertyInfo, setProppertyInfo] = useState(propertyInfos);
  const cols = Object.keys(propertyInfo).map((name)=>(
    <Col 
      span={5} 
      className={style.card}
      onClick={()=>{
        setModalState(true);
        updateProperty = propertyInfo[name];
        console.log("更新",updateProperty);
      }}
      key={name}
    >
      <Descriptions column={1} title={name}>
          {
            Object.entries(propertyInfo[name]).map(item=>(
              <Descriptions.Item 
                label={item[0]}
                key={item[0]}
              >{item[1] as any}</Descriptions.Item>   
            ))
          }
      </Descriptions>
    </Col>
  ));
  return (
    <div className={style.money}>
      <Row justify="space-around">
        {cols}
      </Row>
      {void console.log("重新渲染", updateProperty)}
      <MyModal
        onCancle={() => { setModalState(false); } }
        onOk={() => {setModalState(false)}}
        open={modalState} 
        title={"修改"} 
        dict={updateProperty} 
      ></MyModal>
    </div>
  );
}

export default Money
