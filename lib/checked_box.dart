import 'package:flutter/material.dart';
import 'package:learn/drawer_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Stateful v/s Stateless Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  bool ischecked = true;
  @override
  Widget build(BuildContext context) {
    bool ControlAffinity;
    var onChanged;
    return Scaffold(
      appBar: AppBar(
        title: Text('checked box'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: true,
            onChanged: ((value) {
              print('check${value},');
              setState(() {
                ischecked = value!;
              });
            }),
          ),
          CheckboxListTile(
            value: true,
            title: Text('Accept terms and conditions'),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: ((value) {
              print:
              Text('check${value},');
              // ignore: unused_label

              setState(() {
                ischecked = value!;
              });
            }),
          )
        ],
      ),
    );
  }
}
