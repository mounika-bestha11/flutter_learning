import 'package:flutter/material.dart';

class MyWebView extends StatelessWidget {
  const MyWebView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https:\\flutter.dev',
      ),
    );
  }

  WebView({required String initialUrl}) {}
}
