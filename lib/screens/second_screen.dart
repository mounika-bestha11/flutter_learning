// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  //const SecondScreen({Key? key}) : super(key: key);
  String? text;
  SecondScreen(String text1) {
    this.text = text1;
  }
  //SecondScreen(this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text('this message from first screen::  ${text}'),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('go to fifth screen '),
            ),
          ],
        ),
      ),
    );
  }
}
