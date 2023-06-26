import React from 'react';
import { Descriptions, Image } from 'antd';

const App: React.FC = () => (
  <Descriptions title="User Info" column={1}>
    <Descriptions.Item label="UserName">Zhou Maomao</Descriptions.Item>
    <Descriptions.Item label="Telephone">1810000000</Descriptions.Item>
    <Descriptions.Item label="Live">Hangzhou, Zhejiang</Descriptions.Item>
    <Descriptions.Item label="Address" span={2}>
      No. 18, Wantang Road, Xihu District, Hangzhou, Zhejiang, China
    </Descriptions.Item>
    <Descriptions.Item label="Remark">
        <Image src="http://b.yunkuaimai.com/wp-content/uploads/2019/01/25-1.png" alt="" />
    </Descriptions.Item>
  </Descriptions>
);

export default App;