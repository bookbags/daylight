import React from 'react';
import style from "./index.less";
import { Form, Input, Modal } from 'antd';

interface IProps{
    title:string;
    onOk:()=>void;
    onCancle:()=>void;
    open:boolean;
    dict:Record<string, any>
}

const MyModal = (props:IProps) => {
  return (
    <div className={style.myModal}>
      <Modal 
        onOk={props.onOk}
        onCancel={props.onCancle}
        open={props.open}
        title={props.title}
      >
        <Form
            labelCol={{span:6}}
        >
            {
                Object.keys(props.dict).map((item)=>{
                    return (
                        <Form.Item 
                            name={item}
                            label={item} 
                            initialValue={props.dict[item]}
                            key={item}
                        >
                            <Input></Input>
                        </Form.Item>
                    );
                })
            }
        </Form>
      </Modal>
    </div>
  )
}

export default MyModal;
