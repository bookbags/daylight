### myWeiXin

#### 踩坑
+ 在浏览器中展示UI时，如果当前路由需要其他路由传递参数，那么如果直接打开给页面，页面会保存，提示参数为NULL，那么只能通过在根组件进行路由导航的时候，给与一个默认值。（个人解决方案，未寻到标准解决方案）