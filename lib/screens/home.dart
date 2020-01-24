import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redBackground,
      body: screens.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text('Numbers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Ask'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text('Emergency'),
          ),
        ],
        currentIndex: _index,
        selectedItemColor: redLightBlood,
        onTap: (int chosenIndex) {
          setState(() {
            _index = chosenIndex;
          });
        },
      ),
    );
  }
}
