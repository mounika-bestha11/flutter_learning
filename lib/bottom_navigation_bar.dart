import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentposion = 1;
  var list = [
    Center(
      child: Text(
        "home",
      ),
    ),
    Center(
      child: Text(
        "camera",
      ),
    ),
    Center(
      child: Text(
        "store",
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bottom Navigation Bar'),
        ),
        body: list[currentposion],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          currentIndex: currentposion,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'store',
            ),
          ],
          onTap: (index) {
            setState(() {
              currentposion:
              index;
            });
          },
        ));
  }
}
