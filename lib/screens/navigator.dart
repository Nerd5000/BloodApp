import 'package:blood_app/constants.dart';
import 'package:blood_app/screens/home.dart';
import 'package:blood_app/screens/sign_up.dart';
import 'package:blood_app/services/shared_prefrences_cu.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class NavigatorCU extends StatefulWidget {
  @override
  _NavigatorCUState createState() => _NavigatorCUState();
}

class _NavigatorCUState extends State<NavigatorCU> {
  String type;

  void initVar() async {
    type = await SPCustomized().getString(key: 'type') ?? null;
    setState(() {});
  }

  @override
  initState() {
    super.initState();
    initVar();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: type == null ? SignUp() : Home(),
      title: Text('Blood Donation App'),
      loadingText: Text('Loading...'),
      image: Image.asset(
        'assets/images/logo.png',
      ),
      backgroundColor: redBackground,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 50.0,
      loaderColor: redLightBlood,
    );
  }
}
