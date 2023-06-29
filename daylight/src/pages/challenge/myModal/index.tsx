import React from 'react';
import style from "./index.less";
import { Modal, Form, Input, FormInstance, Button } from 'antd';
import { IChallenge } from '../index';
import TextArea from 'antd/es/input/TextArea';
interface IProps{
    form:FormInstance;
    modalState:boolean;
    onOk:()=>void;
    onCancel:()=>void;
    data?:IChallenge;
}
const MyModal = (props:IProps) => {
    return (
            <Modal
                className={style.item}
                open={props.modalState}
                closable={false}
                title="添加挑战"
                footer={null}
                destroyOnClose={true}
            >
                <Form
                    labelCol={{ span: 4 }}
                    form={props.form}
                    onFinish={props.onOk}
                    preserve={false}
                >
                    <Form.Item
                        label="名称"
                        name="name"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.name}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="起始时间"
                        rules={[{ required: true, message: "必填" }]}
                        name="beginTime"
                        initialValue={props.data?.beginTime}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        name="endTime"
                        label="结束时间"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.endTime}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="类型"
                        name="type"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.type}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="奖励"
                        name="award"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.award}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="状态"
                        name="state"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.state}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        name="standard"
                        label="标准"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.standard?.join("\n")}
                    >
                        <TextArea
                            rows={4} 
                            autoSize={{minRows:4,maxRows:4}}
                        ></TextArea>
                    </Form.Item>
                    <Form.Item
                        label="进度"
                        name="schedule"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.schedule && Object.values(props.data.schedule).pop()}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item
                        label="简介"
                        name="description"
                        rules={[{ required: true, message: "必填" }]}
                        initialValue={props.data?.description}
                    >
                        <Input></Input>
                    </Form.Item>
                    <Form.Item>
                        <Button
                            htmlType='submit'
                        >确定</Button>
                        <Button onClick={props.onCancel}>取消</Button>
                    </Form.Item>
                </Form>
            </Modal>
    )
}

export default MyModal
