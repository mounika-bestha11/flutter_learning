import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyExpandableList extends StatelessWidget {
  List<String> months = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'aug',
    'sep',
    'oct',
    'nov',
    'dec'
  ];

  // const MyExpandableList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expandable list view'),
      ),
      body: ListView.builder(
          itemCount: months.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(months[index]),
              children: [
                Text('About your page'),
                Text(months[index]),
              ],
            );
          }),
    );
  }
}
