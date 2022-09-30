import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my third page'),
      ),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Center(
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          tooltip: 'Addedfavorite',
          onPressed: (() {
            print('FAB click!!');
          }),
          child: Icon(Icons.favorite),
        ),
      ),
    );
  }
}
