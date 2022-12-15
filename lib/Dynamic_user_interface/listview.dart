import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  // This widget is the root of your application.
  @override // Override the build method to return our desired widget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter ListView Example'),
        ),

        // Create a ListView widget
        body: ListView(

            // Create several ListTile widgets, each with a different title and subtitle or other content
            children: <Widget>[
              ListTile(
                title: Text('ListTile One'),
                subtitle: Text('Subtitle One'),
              ),
              Divider(),
              ListTile(
                title: Text('ListTile Two'),
                subtitle: Text('Subtitle Two'),
              ),
              Divider(),
              ListTile(
                title: Text('ListTile Three'),
              ),
            ]),
      ),
    );
  }
}
