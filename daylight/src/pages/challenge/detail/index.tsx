import React from 'react'
import style from "./index.less";
import { useLocation } from 'react-router-dom';
import { Descriptions } from 'antd';

const challengeInfo = {
    name: "三天不吃饭",
    beginTime:"2023-6-23",
    endTime: "2023-7-3",
    type: "生活类",
    award:"ICU一日游",
    state:"挑战中",
    key:"三天不吃饭",
    challengeTime:"2023-6-24",
    description: `Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius autem voluptatem itaque dolorum cumque modi adipisci, totam aperiam perspiciatis sint odit quia, odio exercitationem veritatis error velit rerum recusandae accusamus.
    Incidunt laboriosam ipsa aperiam aspernatur voluptatibus ex ea reprehenderit cupiditate quos facilis inventore necessitatibus ipsum fugiat dolorum at quaerat, odit enim? Ad magni quaerat molestias reiciendis sequi? Soluta, tenetur reiciendis.
    Quidem veritatis facere tempora expedita dolor tempore excepturi dolorem nulla? Sequi, eligendi accusantium? Ex voluptate, minima eaque architecto rem sint quae, officia a sequi placeat, animi mollitia pariatur tempore tenetur.
    Reprehenderit nostrum quo aliquid maxime ipsam, officia a reiciendis atque, quisquam in sit sunt labore, deleniti aperiam veniam fuga dicta rerum quod itaque alias accusantium eum velit! Iste, temporibus pariatur.
    Magnam quae ullam rerum esse, minima nam rem ipsam, id, doloremque corrupti in? Porro magni tenetur facilis repellat, laborum vitae qui nostrum magnam illum corrupti eos dignissimos blanditiis cupiditate modi.`,
    schedule:`Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio commodi laboriosam earum debitis sit obcaecati dignissimos ipsa, in alias esse labore sunt! Tenetur fugiat, dicta veniam reiciendis minima sunt iusto?
    Inventore officiis similique ab voluptates aliquid earum reprehenderit quidem, fuga laboriosam vel deserunt sapiente iusto aperiam non, perspiciatis quo ullam? Quod impedit numquam eveniet repellendus officia perferendis earum voluptates similique?
    Consequuntur sapiente maiores accusamus vel perferendis suscipit nihil. Doloremque ipsum dolorum, accusamus ratione provident culpa ipsa iure suscipit corrupti pariatur atque veritatis dolore ea, molestiae soluta! Voluptate voluptatibus quisquam ducimus.`,
    standrad:"不合适"
}
const ChallengeDetail = () => {
    const location = useLocation();
  return (
    <div className={style.challengeDetail}>
      <Descriptions column={2}>
        {
            Object.keys(challengeInfo).map(item=>{
                return (
                    item == "description" ? 
                        <Descriptions.Item 
                            label={item}
                            key={item}
                            span={2}
                        >
                            {challengeInfo[item]}
                        </Descriptions.Item> :
                        <Descriptions.Item 
                            label={item} 
                            key={item}
                        >
                            {challengeInfo[item]}
                        </Descriptions.Item>
                )
            })
        }
      </Descriptions>
    </div>
  )
}

export default ChallengeDetail;
