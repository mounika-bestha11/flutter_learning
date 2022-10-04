// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyFirstApp extends StatelessWidget {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var JavaScriptMode;
    return Scaffold(
        appBar: AppBar(title: Text('Programming telugulo')),
        body: WebView(
          initialurl: 'https:\\flutter .dev',
          javascriptmode: JavaScriptMode.unrestricted,
        ));
  }

  WebView({required String initialurl, required javascriptmode}) {}
}
