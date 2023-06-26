import React from 'react';
import style from "./index.less";
import { Col, Descriptions, Row } from 'antd';

const Money = () => {
  return (
    <div className={style.money}>
      <Row justify="space-around">
        <Col span={5} className={style.card}>
            <Descriptions column={1} title="贷款">
                <Descriptions.Item label="国家助学贷款">34000</Descriptions.Item>   
                <Descriptions.Item label="度小满">0</Descriptions.Item>
                <Descriptions.Item label="京东白条">3141.22</Descriptions.Item>
            </Descriptions>
        </Col>
        <Col span={5} className={style.card}>
          <Descriptions column={1} title="收入">
            <Descriptions.Item label="工资">5000</Descriptions.Item>
          </Descriptions>
        </Col>
        <Col span={5} className={style.card}>
          <Descriptions column={1} title="每月固定开销">
            <Descriptions.Item label="房租">2000</Descriptions.Item>
            <Descriptions.Item label="水电气">100</Descriptions.Item>
            <Descriptions.Item label="利息">500</Descriptions.Item>
            <Descriptions.Item label="吃喝用">1000</Descriptions.Item>
          </Descriptions>
        </Col>
        <Col span={5} className={style.card}>
          <Descriptions column={1} title="盈余">
            <Descriptions.Item label="剩余">1500</Descriptions.Item>
            <Descriptions.Item label="总存款">400</Descriptions.Item>
          </Descriptions>
        </Col>
      </Row>
    </div>
  );
}

export default Money
