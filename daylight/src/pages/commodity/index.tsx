import React, { useState } from 'react';
import style from "./index.less";
import img from "../../../public/img/餐巾纸.png";
import { Button, Card, Descriptions, Image } from 'antd';
import MyTooltip from "./tooltip";

const commodities = [
    {
        img: img,
        name: "餐巾纸",
        description: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. At, vero dignissimos eum nostrum, consectetur labore sunt debitis, nemo porro dolorum distinctio maxime?",
        money: 3,
        sunlight: 0,
        superLink: "https://item.jd.com/100038791403.html"
    }, {
        img: img,
        name: "餐巾纸",
        description: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. At, vero dignissimos eum nostrum, consectetur labore sunt debitis, nemo porro dolorum distinctio maxime?",
        money: 3,
        sunlight: 0,
        superLink: "https://item.jd.com/100038791403.html"
    }, {
        img: img,
        name: "餐巾纸",
        description: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. At, vero dignissimos eum nostrum, consectetur labore sunt debitis, nemo porro dolorum distinctio maxime?",
        money: 3,
        sunlight: 0,
        superLink: "https://item.jd.com/100038791403.html"
    }
]

const Commodity = () => {
    const [modalState, setModalState] = useState<boolean>(false);
    return (
        <div className={style.commodity}>
            {
                commodities.map(item => {
                    return (
                        <Card
                            title={item.name}
                            style={{ minWidth: "200px", maxWidth: "300px" }}
                            onClick={
                                (e) => {
                                    setModalState(true);
                                }
                            }
                        >
                            <Descriptions column={1}>
                                {
                                    Object.entries(item).filter((item) => item[0] !== "name")
                                        .map((item) => {
                                            if (item[0] === "img") {
                                                return (
                                                    <Descriptions.Item>
                                                        <Image
                                                            src={item[1]}
                                                            onClick={(e) => { e.stopPropagation() }}
                                                        ></Image>
                                                    </Descriptions.Item>
                                                )
                                            } else if (item[0] === "superLink") {
                                                return (
                                                    <Descriptions.Item>
                                                        <Button style={{ margin: "0 auto" }}>
                                                            <a href={item[1]} target='_block'>购买</a>
                                                        </Button>
                                                    </Descriptions.Item>
                                                )
                                            } else {
                                                return <Descriptions.Item label={item[0]}>{item[1]}</Descriptions.Item>
                                            }
                                        })
                                }
                            </Descriptions>
                        </Card>
                    );
                })
            }
            <MyTooltip
                open={modalState}
                onOk={() => setModalState(false)}
                onCancel={() => setModalState(false)}
            ></MyTooltip>
        </div>
    );

}

export default Commodity;

/**
 * 需要购买的东西
 * {
 *  img?: 商品图片 
 *  name: 名称
 *  description: 描述
 *  money: 价值
 *  sunlight: 需要多少阳光
 *  superLink: 链接地址
 * }
 * 
 */
