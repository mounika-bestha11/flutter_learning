import 'package:flutter/material.dart';
import 'package:learn/screens/second_screen.dart';

class MyFifthPage extends StatelessWidget {
  const MyFifthPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bar'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: () {
            var fifth;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen('Hello good morning'),
              ),
            );
          },
          child: Text("Go to the secondscreen"),
        ),
      ),
    );
  }
}
