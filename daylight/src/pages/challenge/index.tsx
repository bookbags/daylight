import React, { useState } from 'react';
import style from "./index.less";
import { Button, Table, Form } from 'antd';
import { NavLink } from 'react-router-dom';
import Operation from "./operation";
import MyModal from './myModal';

export interface IChallenge {
    name: string;
    beginTime: string;
    endTime: string;
    type: string;
    award: string;
    state: string;
    schedule?: Record<string, string>;
    description: string;
    standard?: string[];
    key?:string;
}

const challengeInfo:IChallenge[] = [
    {
        name: "三天不睡觉",
        beginTime: "2023-6-23",
        endTime: "2023-7-3",
        type: "生活类",
        award: "ICU一日游",
        state: "挑战中",
        key: "三天不睡觉",
        description: "坚持三天不碎觉"
    }, {
        name: "三天不吃饭",
        beginTime: "2023-6-23",
        endTime: "2023-7-3",
        type: "生活类",
        award: "ICU一日游",
        state: "挑战中",
        key: "三天不吃饭",
        description: "坚持三天不碎觉"
    }, {
        name: "入门MySql",
        beginTime: "2023-6-27",
        endTime: "2023-7-10",
        type: "技能类",
        award: "300元以下商品任选一件",
        state: "挑战中",
        key: "入门MySql",
        description: "看完SQL必知必会, 能够熟练的进行数据/表的增删改查",
        schedule: {
            "2023/6/27": "完成第一课和第二课的学习，并导入相关的数据库文件，使得我能够在本机上运行相关的脚步，完成相关挑战题，so easy"
        },
        standard: [

            `SQL语言：熟练掌握SQL语言是MySQL开发的基础。了解SQL语法、查询优化、数据操作（插入、更新、删除）和数据查询是至关重要的。

                数据库设计和规范化：了解数据库设计原则和规范化范式有助于您设计有效和可扩展的数据库结构。这包括表的创建、关系建立、索引设计和数据完整性维护等。
                
                数据库管理和优化：熟悉MySQL的管理工具和技术，例如备份和恢复、性能调优、查询分析和索引优化等。了解如何监控和优化数据库的性能是提高应用程序效率的关键。
                
                数据库连接与编程：了解如何通过编程语言（如Python、Java、PHP等）与MySQL数据库进行连接和交互。熟悉使用数据库驱动程序、执行查询、事务管理和错误处理等。
                
                安全和权限管理：了解MySQL的安全机制和权限管理，包括用户管理、访问控制、数据加密和漏洞防护等。确保数据库的安全性和数据的机密性。
                
                故障排除和疑难解答：能够识别和解决常见的数据库问题，如查询慢、死锁、数据一致性等。具备故障排除的能力是数据库开发中的重要技能之一。
                
                学习能力和持续学习：数据库技术和工具不断发展和更新，作为初级程序员，要有学习新技术和保持更新的意识。跟踪最新的MySQL版本和功能，并了解行业趋势和最佳实践。`

        ]
    }
];

let targetData = null;
const Challenge = () => {
    const [modalState, setModalState] = useState(false);
    const [form] = Form.useForm();
    const columnConfig = [
        {
            title: "项目名称",
            dataIndex: "name",
            key: "name"
        }, {
            title: "起始时间",
            dataIndex: "beginTime",
            key: "beginTime"
        }, {
            title: "结束时间",
            dataIndex: "endTime",
            key: "endTime"
        }, {
            title: "类型",
            dataIndex: "type",
            key: "type"
        }, {
            title: "奖励",
            dataIndex: "award",
            key: "award"
        }, {
            title: "状态",
            dataIndex: "state",
            key: "state"
        }, {
            title: "操作",
            dataIndex: "operation",
            key: "operation",
            render: (a, b, c) => {
                return (
                    <div
                        style={{
                            display: "flex",
                            justifyContent: "space-around"
                        }}
                    >
                        <NavLink to={`./detail?data=${JSON.stringify(b)}`}>详情</NavLink>
                        <span
                            style={{
                                cursor: "pointer"
                            }}
                            onClick={
                                () => {
                                    targetData = b;
                                    setModalState(true);
                                }
                            }
                        >修改</span>
                        <span
                            style={{
                                cursor: "pointer"
                            }}
                        >删除</span>
                    </div>
                )
            }
        }
    ];
    function addChallenge(value) {
        console.log("添加成功", value);
    }
    return (
        <div className={style.challenge}>
            <div className={style.option}>
                <Operation cb={addChallenge}></Operation>
            </div>
            <Table
                columns={columnConfig}
                dataSource={challengeInfo}
                pagination={false}
            ></Table>
            <MyModal
                modalState={modalState}
                onCancel={() => setModalState(false)}
                onOk={() => {
                    setModalState(false);
                    console.log("修改数据", form.getFieldsValue());
                }}//后续操作，加在这里
                form={form}
                data={targetData ?targetData : null}
            ></MyModal>
        </div>
    )
}

export default Challenge;
