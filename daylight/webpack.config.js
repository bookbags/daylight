const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");

module.exports = {
    mode:"development",
    devtool: "source-map",
    entry:path.resolve(__dirname, "./src/index.tsx"),
    resolve:{
        extensions:[".js", ".ts", ".tsx", ".json"]
    },
    output:{
        path:path.resolve(__dirname, "dist"),
        filename:"[name].[chunkhash:5].js"
    },
    module:{
        rules:[
            {
                test: /\.tsx?$/,
                use:"ts-loader"
            },{
                test: /\.less/,
                use:["style-laoder", "css-laoder", "less-laoder"]
            }
        ]
    },
    plugins:[new HtmlWebpackPlugin({template:path.resolve(__dirname, "./public/index.html")})],
    devServer:{
        open:true
    },
    stats:"minimal"
}