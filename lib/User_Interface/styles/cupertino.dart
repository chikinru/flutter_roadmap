import 'package:flutter/cupertino.dart';

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('MyApp'),
      ),
      child: Center(
        child: CupertinoButton(
          // <-- new button implementation for iOS style design language
          color: CupertinoColors.activeBlue,
          onPressed: () => print('Pressed!'),
          child: Text('Tap Here'),
        ),
      ),
    ));
  }
}
