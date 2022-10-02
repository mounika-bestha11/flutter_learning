// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation Bar'),
        ),
        body: Container());
  }
}
