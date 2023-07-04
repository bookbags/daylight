import React from "react";
import {useRoutes} from "react-router-dom";
import Home from "../pages/home";
import Money from "../pages/money";
import Time from "../pages/time";
import Gnosis from "../pages/gnosis";
import Challenge from "../pages/challenge";
import ChallengeDetail from "../pages/challenge/detail";
import Commodity from "../pages/commodity";
import Test from "../pages/test";
import Chart from "../pages/chart";
import Demo from "../pages/demo";

const router = [
    {
        path:"/",
        element: <Home/>   
    },{
        path: "/money",
        element: <Money/>
    },{
        path: "/introduce",
        element: <Home></Home>
    },{
        path: "/time",
        element: <Time/>
    },{
        path: "/gnosis",
        element: <Gnosis/>
    },{
        path: "/challenge",
        element: <Challenge></Challenge>
    },{
        path:"/challenge/detail",
        element:<ChallengeDetail></ChallengeDetail>
    },{
        path:"/commodity",
        element:<Commodity/>
    },{
        path: "/test",
        element: <Test></Test>
    },{
        path: "/chart",
        element: <Chart/>
    },{
        path: "/demo",
        element: <Demo></Demo>
    }
];

const Router = () => {
  return useRoutes(router);
}

export default Router