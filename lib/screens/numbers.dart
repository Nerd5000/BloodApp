import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class Numbers extends StatefulWidget {
  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  List<Widget> listTileItems = [];
  void listTile() {
    for (String i in emergencyPhone.keys) {
      listTileItems.add(
        ListTile(
          leading: Icon(Icons.call),
          title: Text(i),
          subtitle: Text(emergencyPhone[i]),
        ),
      );
      listTileItems.add(
        Divider(
          thickness: 1,
        ),
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    listTile();
    super.initState();
  }

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
                child: Column(
                  children: listTileItems,
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
