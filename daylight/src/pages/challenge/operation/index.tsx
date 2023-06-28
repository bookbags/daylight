import React, { useState } from 'react';
import style from "./index.less";
import { Button, Form, Input, Modal } from 'antd';

interface IProps{
    cb:(value:any)=>void;
}

const MyItem = (props:IProps) => {
    const [modalStat, setModalState] = useState(false);
    const [form] = Form.useForm();
    return (
        <div className={style.oparation}>
            <Button
                onClick={()=>{setModalState(true)}}
            >
                新增
            </Button>
            <Modal
                className={style.item}
                open={modalStat}
                onOk={()=>{
                    form.submit();
                }}
                onCancel={()=>{setModalState(false)}}
                closable={false}
                title="添加挑战"
            >
                <Form
                    labelCol={{span:4}}
                    form={form}
                    onFinish={
                        async()=>{
                            console.log("完成");
                            props.cb(form.getFieldsValue());
                            setModalState(false);
                        }

                    }
                >
                    <Form.Item
                        label="名称"
                        name="name"
                        rules={[{required:true, message:"必填"}]}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="起始时间"
                        rules={[{required:true, message:"必填"}]}
                        name="beginTime"
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        name="endTime"
                        label="结束时间"
                        rules={[{required:true, message:"必填"}]}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="类型"
                        name="type"
                        rules={[{required:true, message:"必填"}]}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="奖励"
                        name="award"
                        rules={[{required:true, message:"必填"}]}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="状态"
                        name="state"
                        rules={[{required:true, message:"必填"}]}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        name="standard"
                        label="标准"
                        rules={[{required:true, message:"必填"}]}
                    >
                        <textarea
                            style={{
                                display:"block",
                                width: "100%",
                                resize: "none",
                                border:"1px solid #d9d9d9",
                                outline:"none",
                                height: "64px",
                                fontSize:"14px",
                                fontFamily: "-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,'Helvetica Neue',Arial,'Noto Sans',sans-serif,'Apple Color Emoji','Segoe UI Emoji','Segoe UI Symbol','Noto Color",
                                borderRadius: "6px",
                                padding:"4px 11px"
                            }}
                        ></textarea>
                    </Form.Item>
                    <Form.Item
                        label="进度"
                        name="schedule"
                        rules={[{required:true, message:"必填"}]}
                    >
                        <Input></Input>
                    </Form.Item>   
                </Form>
            </Modal>
        </div>
    )
}

export default MyItem
