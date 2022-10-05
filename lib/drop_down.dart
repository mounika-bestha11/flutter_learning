import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  var countriesList = ['india', 'america', 'srilanka'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drop drown'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[],
      ),
    );
  }
}
