//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast/toast.dart';

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
              Fluttertoast.showToast(msg: 'Toast Demo');
            }),
      ),
    );
  }
}
