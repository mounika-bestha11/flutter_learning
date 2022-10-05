import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawerLayout extends StatefulWidget {
  const MyDrawerLayout({Key? key}) : super(key: key);
  _MyDrawerLayoutState createState() => _MyDrawerLayoutState();
}

class _MyDrawerLayoutState extends State<MyDrawerLayout> {
  var list = [
    Center(
      child: Text('home'),
    ),
    Center(
      child: Text('sign in'),
    ),
    Center(
      child: Text('sign out'),
    ),
  ];
  var currentItemSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Layout'),
      ),
      body: list[currentItemSelected],
      drawer: Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('programmingtelugu lo',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  )),
            ),
            padding: EdgeInsets.zero,
          ),
          ListTile(
            title: Text(
              'home',
            ),
            leading: Icon(Icons.home),
            onTap: (() {
              Navigator.pop(context);
              setState(() {
                currentItemSelected = 0;
              });
            }),
          ),
          ListTile(
            title: Text(
              'sign in',
            ),
            leading: Icon(
              Icons.access_alarm,
            ),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                currentItemSelected = 1;
              });
            },
          ),
          ListTile(
            title: Text(
              'sign out',
            ),
            leading: Icon(
              Icons.local_activity,
            ),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                currentItemSelected = 2;
              });
            },
          ),
        ]),
      ),
    );
  }
}
