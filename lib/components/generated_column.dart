import 'package:flutter/material.dart';

class GeneratedColumnCU extends StatefulWidget {
  final List itemsList;
  final List subTypeList;
  final Icon icon;
  GeneratedColumnCU({this.itemsList, this.icon, this.subTypeList});
  @override
  _GeneratedColumnCUState createState() => _GeneratedColumnCUState();
}

class _GeneratedColumnCUState extends State<GeneratedColumnCU> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: new List.generate(widget.itemsList.length, (index) {
        return ListTile(
          leading: widget.icon,
          subtitle: widget.subTypeList == null
              ? null
              : Text(widget.subTypeList[index]),
          title: Text(widget.itemsList[index]),
        );
      }).toList(),
    );
  }
}
