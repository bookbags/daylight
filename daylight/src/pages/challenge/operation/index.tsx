import React, { useState } from 'react';
import style from "./index.less";
import { Button, Form, Input, Modal } from 'antd';
import MyModal from "../myModal";

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
            <MyModal
                form={form}
                onCancel={()=>setModalState(false)}
                modalState={modalStat}
                onOk={()=>{
                    props.cb(form.getFieldsValue());
                    setModalState(false);
                }}
            ></MyModal>
        </div>
    )
}

export default MyItem
