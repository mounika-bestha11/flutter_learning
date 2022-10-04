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

class MyStateLessWidget extends StatelessWidget {
  var liked;

  var count;

  //const MyStateLessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 22,
          ),
          Text(
            "Iam state less widget!",
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
    );
  }
}

class StateLessAndFul extends StatefulWidget {
  const StateLessAndFul({Key? key}) : super(key: key);

  @override
  State<StateLessAndFul> createState() => _StateLessAndFulState();
}

class _StateLessAndFulState extends State<StateLessAndFul> {
  var liked;
  var count;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 22,
          ),
          Text(
            "Iam state less andful widget!",
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
    );
  }
}
