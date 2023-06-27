import React from 'react';
import style from "./index.less";
import { Table } from 'antd';
import { NavLink } from 'react-router-dom';

const challengeInfo = [
    {
        name: "三天不睡觉",
        beginTime:"2023-6-23",
        endTime: "2023-7-3",
        type: "生活类",
        award:"ICU一日游",
        state:"挑战中",
        key:"三天不睡觉"
    },{
        name: "三天不吃饭",
        beginTime:"2023-6-23",
        endTime: "2023-7-3",
        type: "生活类",
        award:"ICU一日游",
        state:"挑战中",
        key:"三天不吃饭"
    },{
        name:"入门MySql",
        beginTime:"2023-6-27",
        endTime:"2023-7-10",
        type:"技能类",
        award:"300元以下商品任选一件",
        state: "挑战中",
        key:"入门MySql",
        description:"看完SQL必知必会, 能够熟练的进行数据/表的增删改查",
        schedule:{
            "2023/6/27":"完成第一课和第二课的学习，并导入相关的数据库文件，使得我能够在本机上运行相关的脚步，完成相关挑战题，so easy"
        }
    }
]

const Challenge = () => {
    const columnConfig = [
        {
            title:"项目名称",
            dataIndex:"name",
            key:"name"
        },{
            title:"起始时间",
            dataIndex:"beginTime",
            key:"beginTime"
        },{
            title:"结束时间",
            dataIndex:"endTime",
            key:"endTime"
        },{
            title:"类型",
            dataIndex:"type",
            key:"type"
        },{
            title:"奖励",
            dataIndex:"award",
            key:"award"
        },{
            title:"状态",
            dataIndex:"state",
            key:"state"
        },{
            title:"操作",
            dataIndex:"operation",
            key:"operation",
            render:(a, b, c)=>{
                return <NavLink to={`./detail?data=${JSON.stringify(b)}`}>详情</NavLink>
            }
        }
    ]
  return (
    <div className={style.challenge}>
      <Table
        columns={columnConfig}
        dataSource={challengeInfo}
        pagination={false}
      ></Table>
    </div>
  )
}

export default Challenge;
