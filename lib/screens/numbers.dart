import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';
import 'package:blood_app/components/generated_column.dart';

class Numbers extends StatefulWidget {
  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                child: GeneratedColumnCU(
                  icon: Icon(Icons.call),
                  itemsList: emergencyPhoneNumbers,
                  subTypeList: emergencyPhoneSubtype,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
