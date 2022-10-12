import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/models/date_picker.dart';
import 'package:learn/models/provider_state_management.dart';
import 'package:learn/timer_provider.dart';
import 'package:flutter_provider/flutter_provider.dart';
import 'package:provider/provider.dart';

//import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => TimerProvider(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Stateful v/s Stateless Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyProviderState(),
    );
  }
}
