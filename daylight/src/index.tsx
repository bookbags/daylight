import React from "react";
import reactDom from "react-dom/client";
import App from "./app";
import "./style/init.less";

const root = reactDom.createRoot(document.getElementById("app"));

root.render(
    <App/>
);