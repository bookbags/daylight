import React from "react";
import {useRoutes} from "react-router-dom";
import Home from "../pages/home";
import Money from "../pages/money";
import Time from "../pages/time";
import Gnosis from "../pages/gnosis";
import Challenge from "../pages/challenge";
import ChallengeDetail from "../pages/challenge/detail";

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
    }
];

const Router = () => {
  return useRoutes(router);
}

export default Router