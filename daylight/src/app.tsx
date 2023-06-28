import React from 'react';
import Router from "./router/index";
import { Layout, Menu } from 'antd';
import {NavLink, BrowserRouter} from "react-router-dom";

const {Header, Content} = Layout;

const menuItems = [
  {
    label: <NavLink to="/money">资金</NavLink>  ,
    key: "money",
  },{
    label: <NavLink to="/introduce">简介</NavLink>,
    key: "introduce"
  },{
    label: <NavLink to="/time">时间</NavLink>,
    key:"time"
  },{
    label: <NavLink to="/gnosis">gnosis</NavLink>,
    key:"gnosis"
  },{
    label: <NavLink to="/challenge">挑战</NavLink>,
    key: "challenge"
  },{
    label: <NavLink to="/commodity">商品</NavLink>,
    key: "commodity"
  }
]

const App = () => {

  return (
    <BrowserRouter>
      <Layout>
        <Header>
          <Menu items={menuItems} mode='horizontal' theme='dark'></Menu>
        </Header>
        <Content>
          <Router></Router>
        </Content>  
      </Layout> 
    </BrowserRouter>  
  )
}

export default App
