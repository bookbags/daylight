### flutter总结

+ 在flutter中一切皆是widget
  + StatelessWidget无状态组件
  + StatefulWidget有状态组件，可以通过setState修改状态，导致widget重新渲染，具有生命周期：执行顺序如下
    + 初始化
      + initState，初始化状态
      + didChangeDependencies 依赖变化时，调用（使用了遗传组件的数据）。初始化的时候也会调用一次
      + build，渲染
    + 更新
      + didUpdateWidget 数据更新，传入旧的widget
      + build
    + 销毁
      + deactivate 暂时移出widget树，后续可能会出现插入widget树
      + disposed 永久销毁
    + StatefulWidget的状态存储在State对象中，通过createState连接Widget和State，State中具有两个自带属性
      + widget，与之关联的widget的引用
      + context，与之关联的widget的上下文
  + InheritedWidget遗传组件，可以向子Widget分享自己的状态，同时当自身重新渲染时，通过updateShouldNotify函数，判断其子组件是否需要重新渲染。
    + 但是由于InheritedWidget无法重建自身所以需要使用StatefulWidget包含自身，通过StatefulWidget的重新渲染引起InheritedWidget的重新渲染。将StatefulWidget作为参数传递给InheritedWidget的State，该StatefulWidget就作为数据的容器存在，数据都存储在该StatefulWidget中。
    + 子孙组件如果需要使用数据，通过''context.getInheritedWidgetOfExactType<定义的遗传组件>'就可以获取到定义的遗传组件，通过state属性获取到包装Widget。
+ 根组件默认占满整个屏幕
+ 基础Widget
  + Text：显示文本
  + Image：显示图片
  + TextFiled：输入框
  + Row: 水平布局
  + Column：垂直布局
  + Container：容器
  + padding：可以设置padding的容器
  + ClipRReact: 裁剪圆形容器
  + DecoratedBox：设置背景，边框的容器
  + Expand：弹性容器占满可用空间
  + SizedBox：可以设置大小的容器
  + Stack：允许组件堆叠的容器
  + positioned：在Stack内定位的容器
  + listview：滚动列表容器
  + pageview：页容器，一个孩子就是一页
  + Listener：手势监听组件
  + GestureDetector: 封装好的手势监听组件
    + onTap，指针落下触发
    + onDoubleTap,双击触发
+ 文件操作，网络传输不通过组件完成，使用第三方库进行操作
  + 文件
    + path-provider: 直接操作文件，没有任何格式
    + shared_preference：存储键值对，但是数据量不能太大，值只能为原始类型或者List<String>
    + sqfilte ：数据库，现在安卓和IOS都自带了一个SQLite数据库
  + 网络传输（需要再pubspec.yaml中设置网络访问权限）
    + http