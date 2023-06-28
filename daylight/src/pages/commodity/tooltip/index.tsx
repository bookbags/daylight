import React from 'react';
import style from "./index.less";
import {Modal} from "antd";

const MyTooltip = (props:Record<string, any>) => {
  return (
    <Modal {...props} className={style.tooltip}>

    </Modal>
  )
}

export default MyTooltip;

/**
 * 当前存款
 * 当前sunlight
 * commoidty‘s value
 *  判断是否能够购买
 */
