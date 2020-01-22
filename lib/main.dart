import 'package:flutter/material.dart';
import 'package:blood_app/screens/sign_up.dart';
import 'package:blood_app/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
