### myWeiXin

#### 踩坑
+ 在浏览器中展示UI时，如果当前路由需要其他路由传递参数，那么如果直接打开给页面，页面会保存，提示参数为NULL，那么只能通过在根组件进行路由导航的时候，给与一个默认值。（个人解决方案，未寻到标准解决方案）
+ Expand组件只能在弹性模型中，Row,Column,或者flex

### 问题
+ （通讯录页面）由于是通过listener widget监听PointerDown事件，所以导致Column无法进行滑动，当手指按下时，PointerDown触发，页面就跳转了，所以无法进行滑动
+ TextField具有默认的 contentPadding，所以给TextField设置固定高度时，且高度小于padding+文字高度，就会在设置居中时导致，看起来不是那么居中：![image-20230705104940335](A:\bookbag\img\markdown\image-20230705104940335.png)上面多出的部分就是padding，![image-20230705105032943](A:\bookbag\img\markdown\image-20230705105032943.png)padding垂直方向置于0，以后![image-20230705105118195](A:\bookbag\img\markdown\image-20230705105118195.png)结果达到预期，取消边框后，设置填充色，居中效果失效。暂时没有解决办法。