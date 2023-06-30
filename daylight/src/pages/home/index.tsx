import React from 'react'
import style from "./index.less";
import { Avatar, Descriptions, List, Steps } from 'antd';
import imgUrl from "../../../public/img/cat.jpg";

const config = {
    name: "千羽竹",
    avatar: imgUrl,
}
const skillInfo = {
    html:{
        level:"熟悉",
        info: "熟悉html，能够熟练的使用语义化标签进行页面框架的搭建，了解html5的新规范"
    },
    css:{
        level: "熟悉",
        info: "熟悉css语法规则，能够使用css进行页面的快速实现，了解css3新增的属性，并运用于实际开发中"
    },
    javascript:{
        level: "熟悉",
        info: "熟悉js的运行原理，熟练掌握闭包，作用域，事件循环，异步的相关知识，对ES6的新语法有一定的使用经验"
    },
    webpack:{
        level:"了解",
        info: "对webpack的运行原理有简单的了解，知道loader，plugin的运行原理，能够使用webpack搭建开发环境"
    },
    typescript:{
        level: "熟悉",
        info:"熟悉typescript的语法规则，能够使用类型，接口，枚举的对变量的类型进行约束，可以通过类型推导，类型断言，泛型对复杂的变量类型进行约束"
    },
    react:{
        level:"了解",
        info: "掌握react的常用语法，能够熟练的使用组件进行页面的还原"
    },
    dart:{
        level:"入门",
        info:"简单了解dart，了解dart的基本语法规则，使用flutter完成过一个简单的小demo"
    }
}

const steps = [
    {
        title:"拿到双证",
        description:"提交归档文件夹，拿到双证"
    },{
        title: "找到正式工作",
        description:"找到正式工作，薪资起底5000"
    },{
        title: "工资得到8000",
        subTiele:"24岁之前",
        descriptions:"学习技术，掌握react源码，长工资"
    },{
        title:"还清所有贷款",
        subTitle:"25岁之前",
        description:"还清所有的贷款，即：国家助学贷款"
    },{
        title:"存款达到5万",
        subTitle:"26岁之前",
        description:"在没有任何形式的欠债的情况下，银行卡拥有完整的5万块钱"
    }
]
const Home = () => {
  return (
    <div className={style.home}>
      <header>
        <div className={style.avatar}>
            <Avatar src={config.avatar} size={100}></Avatar>
            <h5>{config.name}</h5>
        </div>
        <div className={style.userBody}>
            <Descriptions>
                <Descriptions.Item label="height">173cm</Descriptions.Item>
                <Descriptions.Item label="weight">81kg</Descriptions.Item>
                <Descriptions.Item label="year">23岁</Descriptions.Item> 
                <Descriptions.Item label="github"><a href="https://github.com/bookbags">https://github.com/bookbags</a></Descriptions.Item>
                <Descriptions.Item label="education">本科</Descriptions.Item>
                <Descriptions.Item label="major">信息安全</Descriptions.Item>
            </Descriptions>
        </div>
      </header>
      <main>
        <div className={style.title}>
            <h5>技能</h5>
            <h5>规划</h5>
        </div>
        <List
            dataSource={Object.keys(skillInfo)}
            renderItem={
                (item, index)=>{
                    return (
                        <List.Item>
                            <List.Item.Meta
                                title={skillInfo[item].level}
                                description={skillInfo[item].info}
                                avatar={<span style={{display:"block",width:"60px", textAlign:"center"}}>{item}</span>}
                            />  
                        </List.Item> 
                    )
                }
            }
        ></List>
        <Steps
            current={-1}
            items={steps}
            direction="vertical"
            initial={0}
        ></Steps>
      </main>
    </div>
  )
}

export default Home;

/**
 * 需求：
 * 个人简介（身高，体重，打字成绩，github地址，年龄，）
 * 技能掌握情况
 * 规划
 * 
 */
