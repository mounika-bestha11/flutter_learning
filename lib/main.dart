import 'package:flutter/material.dart';
import 'package:learn/Radio_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Stateful v/s Stateless Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyFirstPage(),
    );
  }
}
