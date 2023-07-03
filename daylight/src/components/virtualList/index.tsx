import React from 'react'
import style from "./index.less";

interface Iprops<T>{
    itemNumb:number;//需要显示的元素个数
    dataSource:T[];
    render:(item:T, index:number)=>React.JSX.Element;
}

const VirtualList = (props:Iprops) => {
  return (
    <div className={style.virtualList}>
      {
        
      }
    </div>
  )
}

export default VirtualList;
