import "package:flutter/material.dart";

class ToDo extends StatefulWidget{
  const ToDo({super.key});
  @override
  State<ToDo> createState()=> _createStateWidget();
}

class _createStateWidget extends State<ToDo>{
  List<String> things = ["a", "b"];

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
                        things.add(value);
                      }
                    });
                  },
                ),
              ),
              Column(
                children: things.map((e) => Container(
                  padding:EdgeInsets.all(5),
                  width: double.infinity,
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(Radius.circular(5))
                  ),
                  child: Text(e, textAlign: TextAlign.left),
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