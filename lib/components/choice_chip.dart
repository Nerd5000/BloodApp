import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class ChoiceChipCU extends StatefulWidget {
  static String value;

  @override
  _ChoiceChipCUState createState() => _ChoiceChipCUState();
}

class _ChoiceChipCUState extends State<ChoiceChipCU> {
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
            selected: ChoiceChipCU.value == bloodTypes[index],
            onSelected: (bool selected) {
              setState(() {
                ChoiceChipCU.value = bloodTypes[index];
              });
            },
          );
        },
      ).toList(),
    );
  }
}
