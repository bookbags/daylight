import { Server } from "socket.io";
import { DefaultEventsMap } from "socket.io/dist/typed-events";

const socketList = [];
export function manageSocket(io:Server<DefaultEventsMap, DefaultEventsMap, DefaultEventsMap, any>){
    io.on("connection", (socket)=>{
        console.log("客服端链接");
        socketList.push(socket);

        socket.on("msg", (msg)=>{
            // 没有用户标识，所以只能全发
            // 向目标用户返回数据
            socketList.forEach(item=>item.emit("msg", msg));
        });
    });
}