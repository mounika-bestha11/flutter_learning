import 'package:flutter/material.dart';

class MySwitchPage extends StatefulWidget {
  const MySwitchPage({Key? key}) : super(key: key);
  _MySwitchPageState createState() => _MySwitchPageState();
}

class _MySwitchPageState extends State<MySwitchPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('switch statement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: status,
              onChanged: (val) {
                print('switch status ${val}');
                setState(() {
                  status = val;
                });
              },
            ),
            SwitchListTile(
              value: status,
              title: Text('switch'),
              subtitle: Text('status${status}'),
              onChanged: ((val) {
                print('switch status ${val}');
                setState(() {
                  status = val;
                });
              }),
              // ignore: avoid_print
            ),
          ],
        ),
      ),
    );
  }
}
