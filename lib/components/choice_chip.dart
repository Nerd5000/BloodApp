import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class ChoiceChipCU extends StatefulWidget {
  @override
  _ChoiceChipCUState createState() => _ChoiceChipCUState();
}

class _ChoiceChipCUState extends State<ChoiceChipCU> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Wrap(
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
              color: redIconColor,
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
    );
  }
}
