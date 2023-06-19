import "package:shared_preferences/shared_preferences.dart";

Future<SharedPreferences> getFileIns() async{
  return await SharedPreferences.getInstance();
}