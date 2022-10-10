import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn/models/date_picker.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      (() {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (__) => MyDatePicker(),
            ),
            (route) => false);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //title:Text('Splash Screen'),
      //),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.network(
          'https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
