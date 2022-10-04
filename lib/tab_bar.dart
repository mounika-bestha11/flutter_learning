import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  var list = [
    Icon(Icons.home),
    Icon(Icons.landscape),
    Icon(Icons.laptop),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'home',
              ),
              Tab(
                icon: Icon(Icons.landscape),
                text: 'land',
              ),
              Tab(
                icon: Icon(Icons.laptop),
                text: 'laptop',
              ),
            ]),
          ),
          body: TabBarView(
            children: list,
          )),
    );
  }
}
