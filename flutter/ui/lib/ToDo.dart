import "package:flutter/material.dart";

class ToDo extends StatefulWidget{
  const ToDo({super.key});
  @override
  State<ToDo> createState()=> _createStateWidget();
}

class Status{
  String name;
  Color state;
  Status(this.name, this.state);
}

class _createStateWidget extends State<ToDo>{
  final achieve = Colors.red;
  final noAchieve = Colors.black12;
  List<Status> things = [Status("a", Colors.black12), Status("b", Colors.black12)];


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "待办事项",
      home:Scaffold(
        appBar: AppBar(title:Text("待办事项")),
        body: Container(
          padding:EdgeInsets.only(left: 10, top: 5, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextField(
                  decoration:InputDecoration(
                    labelText: "请输入待办事项",
                    border: OutlineInputBorder()
                  ),
                  onSubmitted: (String? value){
                    setState(() {
                      if(value != null){
                        things.add(Status(value, noAchieve));
                      }
                    });
                  },
                ),
              ),
              Column(
                children: things.map((e) => Container(
                  padding:const EdgeInsets.all(5),
                  width: double.infinity,
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(Radius.circular(5))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(e.name, textAlign: TextAlign.left),
                      IconButton(
                        icon:const Icon(Icons.favorite),
                        color: noAchieve,
                        onPressed: () => {
                          setState
                        },
                      ),
                    ]
                  )
                )

                ).toList()
              )
            ]
          ),
        )
      )
    );
  }

}