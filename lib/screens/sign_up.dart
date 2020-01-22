import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _value;
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
                                  onChanged: (String value) {},
                                  keyboardType: TextInputType.number,
                                  maxLength: 2,
                                  cursorColor: Colors.red,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    focusColor: Colors.red,
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
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            runSpacing: 10.0,
                            spacing: 10.0,
                            children: List<Widget>.generate(
                              8,
                              (int index) {
                                return ChoiceChip(
                                  padding: EdgeInsets.all(5),
                                  selectedColor: redLightBlood,
                                  tooltip: 'Select The Type',
                                  avatar: Icon(
                                    Icons.whatshot,
                                    color: Colors.red[200],
                                  ),
                                  label: Text(bloodTypes[index]),
                                  selected: _value == bloodTypes[index],
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value = bloodTypes[index];
                                    });
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        )
                      ],
                    )),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 10.0,
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                color: redLightBlood,
                onPressed: () {},
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
