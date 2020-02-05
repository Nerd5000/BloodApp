import 'package:flutter/material.dart';
import 'package:blood_app/screens/sign_up.dart';
import 'package:blood_app/screens/post.dart';
import 'package:blood_app/screens/numbers.dart';
import 'package:blood_app/screens/tips.dart';

bool signed = false;

final List<Widget> screens = [
  Numbers(),
  Post(),
  Tips(),
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

const List<String> emergencyPhoneNumbers = [
  '123',
  '122',
  '180',
  '121',
  '129',
  '128',
];
const List<String> emergencyPhoneSubtype = [
  'Main Ambulance',
  'Emergency Police',
  'Fire Fighters',
  'Electricity Emergency',
  'Natural Gas Emergency',
  'Traffic Police',
];

const List<String> tips = [
  'Keep the strip bandage on for the next several hours; to avoid a skin rash, clean the area around the bandage with soap and water.',
  'Don’t do any heavy lifting or vigorous exercise for the rest of the day.',
  'If the needle site starts to bleed, apply pressure and raise your arm straight up for 5-10 minutes or until bleeding stops.',
  'If you experience dizziness or lightheadedness, stop what you’re doing and sit down or lie down until you feel better; avoid performing any activity where fainting may lead to injury for at least 24 hours.',
  'Keep eating iron-rich foods.',
  'If you donate frequently, be sure to take multivitamins with iron to ensure you continue to replenish your iron stores before your next donation.',
];

// Color redDarkBlood = Color(0xffAC0404);
// Color redLightBlood = Color(0xffED1C24);
Color redBackground = Color(0xffE3B0A4);

Color redDarkBlood = Color(0xff990926);
Color redLightBlood = Color(0xffFF0F3F);
//Color redBackground = Color(0xffFC7A44);
Color fontColor = Color(0xff4A3232);
Color redIconColor = Colors.red[200];
