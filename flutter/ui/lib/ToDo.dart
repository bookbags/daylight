import "package:flutter/material.dart";
import "./file.dart";
import "dart:convert";

class Status{
  String name;
  Color state;
  Status(this.name, this.state);

  Status.fromJson({required this.name, required this.state});
}

class ToDo extends StatefulWidget{
  const ToDo({super.key});
  @override
  State<ToDo> createState()=> _ToDoState();
}

class _ToDoState extends State<ToDo>{
  final achieve = Colors.red;
  final noAchieve = Colors.black12;
  List<Status> things = [];
  final fileIns = getFileInst();
  

  @override
  void initState(){
    super.initState();
    fileIns.then((ins){
      List<String>? needTodoList = ins.getStringList("needTodo");
      if(needTodoList == null){
        things = [];
      }else{
        things = needTodoList.map( (e)=>print(jsonDecode(e)) ).toList() as List<Status>;
      }
    });
  }

  @override
  void deactivate(){
    super.deactivate();
    fileIns.then((ins){
      var result = things.map((e){
        var map = {
          "name":e.name,
          "state":e.state
        };
        return map.toString();
      }).toList();
      print(result);
      ins.setStringList("needTodo", result);
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "待办事项",
      home:Scaffold(
        appBar: AppBar(title:const Text("待办事项")),
        body: Container(
          padding:const EdgeInsets.only(left: 10, top: 5, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextField(
                  decoration:const InputDecoration(
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
                        color: e.state,
                        onPressed: () => {
                          setState((){
                            if(e.state == achieve){
                              e.state = noAchieve;
                            }else{
                              e.state = achieve;
                            }
                            sortStatus(things);
                          })
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

List<Status> sortStatus(List<Status> list){
  list.sort((a, b){
    int result = a.state.toString().compareTo(b.state.toString());
    if(result != 1){
      return a.name.compareTo(b.name);
    }
    return result;
  });
  return list;
}