import 'package:blood_app/components/choice_chip.dart';
import 'package:blood_app/components/submit_button.dart';
import 'package:blood_app/constants.dart';
import 'package:blood_app/screens/home.dart';
import 'package:blood_app/services/shared_prefrences_cu.dart';
import 'package:blood_app/services/show_toast.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String textAge = '';
  bool showPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redBackground,
      body: Center(
        child: SingleChildScrollView(
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
                  if (int.parse(textAge) < 18) {
                    fToast('You Must Be older Than 18');
                  } else {
                    SPCustomized().setString(
                      key: 'type',
                      value: ChoiceChipCU.value,
                    );
                    fToast('Signed');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  }
                },
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
