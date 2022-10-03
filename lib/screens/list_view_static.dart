import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewStaticPage extends StatelessWidget {
  const ListViewStaticPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view static'),
      ),
      body: createListView(),
    );
  }

  Widget createListView() {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Mobile phone'),
          subtitle: Text('this is my mobile phone'),
          trailing: Icon(Icons.attach_email_rounded),
          onTap: (() {
            print('mobile phone selected');
          }),
        ),
        ListTile(
          leading: Icon(Icons.laptop),
          title: Text('new crome'),
          subtitle: Text('this is my laptop'),
          trailing: Icon(Icons.attach_email_rounded),
        ),
      ],
    );
    return listView;
  }
}
