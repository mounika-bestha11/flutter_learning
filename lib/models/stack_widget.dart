// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stackWidget extends StatelessWidget {
  const stackWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var child;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack widget'),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            /*Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),
            )*/
            (CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 30.0,
              ),
            )),
            Positioned(
              right: -10,
              bottom: -10,
              child: CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.favorite,
                  color: Color(0xff1ee940),
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
