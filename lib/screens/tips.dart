import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  
  List<Widget> listTileItems = [];

  void listTile() {
    for (String i in tips) {
      listTileItems.add(
        ListTile(
          leading: Icon(Icons.brightness_1),
          title: Text(i),
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
      child:  SingleChildScrollView(
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


