// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyFirstApp extends StatelessWidget {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('first screen')),
      body: Container(
        child: Column(
          children: [
            TextField(
                controller: editingController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mail),
                )),
            RaisedButton(
                onPressed: () {
                  print('   +editingcontroller.text');
                },
                child: Text('get data'))
          ],
        ),
      ),
    );
  }
}
