import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFourthPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  //const MyFourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('fourth page'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: 'addedFavarite',
        onPressed: () {
          var snackbar = SnackBar(
            content: Text('Add to the favorite'),
            backgroundColor: Colors.red,
            action: SnackBarAction(
              label: 'undo',
              textColor: Colors.amber,
              onPressed: (() {
                print('favorite list');
              }),
            ),
          );
          _scaffoldKey.currentState?.showSnackBar(snackbar);
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}
