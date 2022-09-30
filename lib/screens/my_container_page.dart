import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MYSecondPage extends StatelessWidget {
  const MYSecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
      body: Container(
        //alignment: Alignment.center,
        color: Colors.green,
        height: 300,
        width: 300,
        child: Text(
          'boring',
          style: TextStyle(
            backgroundColor: Colors.amberAccent,
            fontSize: 30,
          ),
        ),
        margin: EdgeInsets.all(
          25,
        ),
        padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
      ),
    );
  }
}
