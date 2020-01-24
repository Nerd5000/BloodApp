import 'package:flutter/material.dart';
import 'package:blood_app/screens/sign_up.dart';
import 'package:blood_app/screens/post.dart';
import 'package:blood_app/screens/numbers.dart';
import 'package:blood_app/screens/emergency.dart';

final List<Widget> screens = [
  Numbers(),
  Post(),
  Emergency(),
  SignUp(),
];

const List<String> bloodTypes = [
  'A+',
  'A-',
  'B+',
  'B-',
  'AB+',
  'AB-',
  'O+',
  'O-',
];

const Map<String, String> emergencyPhone = {
  '123': 'Main Ambulance',
  '122': 'Emergency Police',
  '180': 'Fire Fighters',
  '121': 'Electricity Emergency',
  '129': 'Natural Gas Emergency',
  '128': 'Traffic Police',
};

// Color redDarkBlood = Color(0xffAC0404);
// Color redLightBlood = Color(0xffED1C24);
Color redBackground = Color(0xffE3B0A4);

Color redDarkBlood = Color(0xff990926);
Color redLightBlood = Color(0xffFF0F3F);
//Color redBackground = Color(0xffFC7A44);
Color fontColor = Color(0xff4A3232);
Color redIconColor = Colors.red[200];
