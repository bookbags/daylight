/**
 * 网址可能的形式：
 *  http://localhost:8080/chart
 * http://localhost:8080/chart?a=1
 * http://localhost:8080
 */

/**
 * @param url 网站地址
 * @param data 需要传递的数据
 */
function createGetData(url:string, data:Record<string, any>):string{
    return Object.entries(data).reduce((pre, cur)=>{
        return `${pre}&${cur[0]}=${cur[1]}`;
    },url);
}

export function request(
    url:string, 
    method:"POST"|"GET"|"DELETE"|"PUT",
    data:Record<string, any>
){
    if(method === "GET"){
        return fetch(createGetData(url, data), {method})
    }else{
        return fetch(url, {body:JSON.stringify(data), method})
    }
}