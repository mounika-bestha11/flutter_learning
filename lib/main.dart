import 'package:flutter/material.dart';
import 'package:learn/screens/my_container_page.dart';
import 'package:learn/screens/my_first_page.dart';
import 'package:learn/screens/my_floating_action_button.dart';
import 'package:learn/screens/snack_bar.dart';

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
      title: 'Flutter Stateful Clicker Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyFourthPage(),
    );
  }
}
