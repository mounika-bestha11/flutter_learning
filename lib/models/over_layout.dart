import 'package:flutter/material.dart';

class OverLay extends StatelessWidget {
  const OverLay({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Over lay'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            OverlayState? overlayState = Overlay.of(context);
            OverlayEntry overlayEntry = OverlayEntry(
              builder: (Context) {
                return Positioned(
                  top: 50,
                  left: 20,
                  child: Material(
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                );
              },
            );

            overlayState?.insert(overlayEntry);
            await Future.delayed(
              Duration(seconds: 5),
            );
            overlayEntry.remove();
          },
          child: Text('show over lay'),
        ),
      ),
    );
  }
}
