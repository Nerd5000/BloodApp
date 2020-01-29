import 'package:blood_app/components/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';
import 'package:blood_app/screens/home.dart';
import 'package:blood_app/components/choice_chip.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int age = 0;
  String textAge = '';
  bool showPage = true;

  void fToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: redLightBlood,
        textColor: Colors.white,
        fontSize: 16.0);
    setState(() {
      showPage = true;
    });
  }

  void setInfo(int age, String blood) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('age', age);
    await prefs.setString('blood', blood);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redBackground,
      body: Center(
        child: showPage
            ? SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(20.0),
                      color: Colors.white,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Your Age',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Container(
                                  height: 60.0,
                                  width: 60.0,
                                  child: Theme(
                                    data: ThemeData(
                                      primaryColor: redLightBlood,
                                    ),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        setState(() {
                                          textAge = value;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                      maxLength: 2,
                                      cursorColor: redLightBlood,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        focusColor: redLightBlood,
                                        border: OutlineInputBorder(
                                          gapPadding: 4.0,
                                        ),
                                        labelText: 'Age',
                                        hintText: 'Age',
                                      ),
                                      autofocus: false,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Text(
                              'Select Your Type',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Theme(
                              data: ThemeData(primaryColor: Colors.white),
                              child: ChoiceChipCU(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SubmitButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                        // setState(() {
                        //   signed = true;
                        //     showPage = false;
                        //     age = int.parse(textAge);
                        //     age < 18 || _value != ''
                        //         ? fToast('You\'re Too YOUNG')
                        //         : setInfo(age, _value);
                        // });
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              )
            : CircularProgressIndicator(backgroundColor: redLightBlood),
      ),
    );
  }
}
