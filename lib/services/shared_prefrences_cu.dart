import 'package:shared_preferences/shared_preferences.dart';

class SPCustomized {

  void setString({String key,String value}) async {
    SharedPreferences sharedPrefrences = await SharedPreferences.getInstance();
    await sharedPrefrences.setString(key, value);
  }

  Future<String> getString({String key}) async {
    SharedPreferences sharedPrefrences = await SharedPreferences.getInstance();
    return sharedPrefrences.getString(key);
  }

}
