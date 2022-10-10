import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Programming  telugulo")),
        body: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondPage() ));
                Navigator.pushNamed(context, MySecondPage.pageRoute,
                    arguments: MySecondPageArguments(
                        title: "Second Screen",
                        message: "This hello from Programming తెలుగులో"));
              },
              child: Text("Go To Second Screen"),
            ),
          ),
        ));
  }
}

class MySecondPageArguments {
  String title;
  String message;
  MySecondPageArguments({required this.title, required this.message});
}

class MySecondPage extends StatelessWidget {
  static String pageRoute = "/SecondPage";
  @override
  Widget build(BuildContext context) {
    MySecondPageArguments? mySecondPageArguments =
        ModalRoute.of(context)!.settings.arguments as MySecondPageArguments?;

    return Scaffold(
        appBar: AppBar(title: Text(mySecondPageArguments!.title)),
        body: Scaffold(
          body: Container(
            child: Center(child: Text(mySecondPageArguments.message)),
          ),
        ));
  }
}
