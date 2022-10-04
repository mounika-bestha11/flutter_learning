import 'package:flutter/material.dart';
import 'package:learn/bottom_navigation_bar.dart';
import 'package:learn/tab_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: ' Stateful v/s Stateless Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),

      home: MyTabBar(),
    );
  }
}
