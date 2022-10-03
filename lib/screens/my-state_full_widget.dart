import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);
  _MyStateFulWidgetState createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  bool liked = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          liked = !liked;

          count++;
        });
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 22,
            ),
            Text(
              "Iam state ful widget!",
              style: TextStyle(fontSize: 30, fontFamily: "Ind"),
            ),
            Icon(
              Icons.favorite_sharp,
              color: liked ? Colors.red : Colors.blue,
            ),
            Text(
              '${count} likes',
              style: TextStyle(
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
