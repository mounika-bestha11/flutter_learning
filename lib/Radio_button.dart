import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int selectedPosition = 1;
  String gender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "What is your gender?",
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            RadioListTile(
              title: Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
                print('${gender}');
              },
            ),
            RadioListTile(
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
                print('${gender}');
              },
            ),
            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
                print('${gender}');
              },
            )
          ],
        ),
      ),
    );
  }
}
