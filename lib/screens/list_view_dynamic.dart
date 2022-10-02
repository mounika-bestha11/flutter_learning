//import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewDynamicPage extends StatelessWidget {
  const ListViewDynamicPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view dymaic '),
      ),
      body: createListView(),
    );
  }

  List<String> generateList() {
    List<String> list = List.generate(1000, (counter) => 'item ${counter}');
    return list;
  }

  createListView() {
    var list1 = generateList();
    var listView = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index}'),
          title: Text('${list1[index]}'),
        );
      },
    );
    return listView;
  }
}
