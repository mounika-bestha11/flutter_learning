//import 'dart:html';

import 'package:flutter/material.dart';

class MyToastPage extends StatelessWidget {
  const MyToastPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Demo'),
      ),
      body: Container(
        child: RaisedButton(
            child: Text('Toast Demo'),
            onPressed: () {
              var Fluttertoast;
              Fluttertoast.showToast(msg: 'Toast Demo');
            }),
      ),
    );
  }
}
