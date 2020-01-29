import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class SubmitButton extends StatefulWidget {
  final Function onPressed;
  SubmitButton({this.onPressed});
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
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
      onPressed: widget.onPressed,
    );
  }
}
