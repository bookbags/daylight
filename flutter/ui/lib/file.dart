import "package:shared_preferences/shared_preferences.dart";

var pre;

Future<SharedPreferences> getFileInst() async{
  if(pre == null){
    pre = await SharedPreferences.getInstance();
    return pre;
  }else{
    return pre;
  }
}

