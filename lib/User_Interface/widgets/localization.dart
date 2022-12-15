import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Make sure that the locale is initialized to the app's locale
    return MaterialApp(
        localizationsDelegates: [
          // ... app-specific localization delegate[s here inofe wole

          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', ''),
          Locale('vi', ''),
        ],
        home: Scaffold(
          body: Center(child: Text('hello World')),
        ));
  }
}
