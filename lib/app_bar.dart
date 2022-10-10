// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/screens/my_container_page.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('progamming telugu lo'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (() {}),
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          PopupMenuButton(
            onSelected: (item) {
              print("${item}");
              if (item == 'settings') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MYSecondPage(),
                    ));
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(
                child: Text('log out'),
                value: 'log out',
              ),
              PopupMenuItem(
                child: Text('settings'),
                value: 'settings',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
