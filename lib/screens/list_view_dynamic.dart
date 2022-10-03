//import 'dart:developer';

// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          onTap: () {
            print(list1[index]);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen('list1[index]'),
              ),
            );
          },
        );
      },
    );
    return listView;
  }
}

class SecondScreen extends StatelessWidget {
  // const SecondScreen({Key? key}) : super(key: key);
  String title;
  SecondScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(child: Text('title')),
    );
  }
}
