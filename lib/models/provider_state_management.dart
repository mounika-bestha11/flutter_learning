import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn/timer_provider.dart';

import 'package:provider/provider.dart';

class MyProviderState extends StatefulWidget {
  const MyProviderState({Key? key}) : super(key: key);

  _MyProviderStateState createState() => _MyProviderStateState();
}

class _MyProviderStateState extends State<MyProviderState> {
  int countDown = 1160;

  @override
  void initState() {
    //var timerProvider = Provider.of<TimerProvider>(context);

    Timer.periodic(Duration(seconds: 1), ((timer) {
      //timerProvider.updatetimer();
      //Provider.of<TimerProvider>(context, listen: false).updatetimer();
    }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //print('build calling ${countDown}');
    return Scaffold(
      appBar: AppBar(
        title: Text('provider state'),
      ),
      /*body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Icon(
              Icons.timer,
              size: 80,
              color: Colors.orange,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              /*child: Consumer<TimerProvider>(
                builder: (context, data, child) {
                  return Text(
                    '${data.countDown}',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),*/
              body: Center(
                    child: Text(
                      // reading this data is exactly like it was in
                      // the previous lesson
                      '''
                      Hi ${Provider.of<TimerProvider>(context).countDown}!
                      You are ${Provider.of<TimerProvider>(context).countDown} years old''',
                    ),
                  ),
              floatingActionButton: FloatingActionButton(
                // this is where there's a difference.
                // when the FAB is tapped, it will call `Person.icreaseAge()` on the
                // person instance that was created by provider.
                onPressed: () =>
                    Provider.of<TimerProvider>(context, listen: false).updatetimer(),
              ),
              
      ),
          ],
        ),
      ),*/
    );
  }
}
