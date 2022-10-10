import 'package:flutter/material.dart';

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var dateTime;
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: (() async {
              PickDate(BuildContext, context);
            }),
            child: Center(child: Text('pick date')),
          ),
          Center(
            child: Text(
              ' dateTimePicked' + dateTime.toString().split('')[0],
            ),
          ),
          // Text("FlutLab is on your service!"),
          //Icon(Icons.mood),
        ],
      ),
    );
  }
}

class Context {}

PickDate(BuildContext, context) {
  var nul;
  DateTime dateTime;
  var then = showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1995),
          lastDate: DateTime(2030))
      .then((value) {
    setstate() {
      dateTime = value!;
    }
  });
}
