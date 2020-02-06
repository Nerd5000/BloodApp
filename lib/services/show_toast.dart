import 'package:blood_app/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

void fToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIos: 1,
    backgroundColor: redLightBlood,
    textColor: white,
    fontSize: 16.0,
  );
}
