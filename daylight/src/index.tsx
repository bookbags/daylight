import React from "react";
import reactDom from "react-dom/client";
import App from "./app";

const root = reactDom.createRoot(document.getElementById("app"));

root.render(<App></App>);