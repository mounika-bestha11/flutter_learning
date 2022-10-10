import 'package:flutter/material.dart';

class MYCodingChat extends StatelessWidget {
  const MYCodingChat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String fav;
    var item;
    return Scaffold(
      appBar: AppBar(title: Text('Coding chat')),
      body: Column(
        children: [],
      ),
    );
  }

  CountryPickerDropdown(
      {required String initialValue,
      required itemBuilder,
      required bool itemFilter,
      required List priorityList,
      required Function(dynamic a, dynamic b) sortComparator,
      required Null Function(dynamic country) onValuePicked}) {}
}
