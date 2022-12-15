import 'package:flutter/material.dart';

void main() => runApp(Material());

class Material extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The MaterialDesign theme for a Flutter app.
    return new MaterialApp(
      title: 'Flutter Demo', // Title to display in the appbar

      // Set the theme colors for your app as shown below,
      // this will apply all the color styling to your application, making it look cohesive.
      theme: ThemeData(primaryColor: Colors.blue),

      home: Scaffold(
          appBar: AppBar(title: Text('Material Design')),

          // Here we can use any kind of material design components that come with the package
          body: Center(
              child: ElevatedButton(
            child: Text('Button'),
            onPressed: () {},
          ))),
    );
  }
}
