//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAlertDialouge extends StatelessWidget {
  const MyAlertDialouge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialouge Demo'),
      ),
      body: RaisedButton(
        onPressed: (() {
          createAlertDialog(context);
        }),
        child: Text('show Alert Dialouge'),
      ),
    );
  }

  createAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
        backgroundColor: Colors.amber,
        elevation: 10.0,
        title: Text('congtrats'),
        content: Text('you have won iphone 7'),
        actions: <Widget>[
          GestureDetector(
            child: Text('close'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ]);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
