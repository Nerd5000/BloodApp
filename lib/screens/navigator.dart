import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:blood_app/screens/sign_up.dart';
import 'package:blood_app/constants.dart';

class NavigatorCU extends StatefulWidget {
  @override
  _NavigatorCUState createState() => _NavigatorCUState();
}

class _NavigatorCUState extends State<NavigatorCU> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: SignUp(),
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
