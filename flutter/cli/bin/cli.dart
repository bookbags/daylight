import "dart:convert";
int returnTwo(){
  print("two");
  return 2;
}

void test(int a, {String name = "s"}){

}

class State{
  String name;
  int age;
  State(this.name, this.age);
}
void main() {
  List<State> list = [
    State("shutao", 10),
    State("book", 10)
  ];
  List<String> jsonList = list.map((e){
    return e.toString();
  }).toList();
  print(jsonList);
}