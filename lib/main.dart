import 'package:flutter/material.dart';
import 'package:flutter_roadmap/3rd%20library/dio.dart';
import 'package:flutter_roadmap/3rd%20library/http.dart';
import 'package:flutter_roadmap/User_Interface/widgets/assets.dart';
import 'package:flutter_roadmap/User_Interface/widgets/stateful.dart';
import 'package:flutter_roadmap/User_Interface/widgets/stateless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stateless()));
                },
                child: Text("Stateless")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stateful()));
                },
                child: Text("Stateful")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Assets()));
                },
                child: Text("Assets")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Http()));
                },
                child: Text("Http")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DioX()));
                },
                child: Text("Dio")),
          ],
        ),
      ),
    );
  }
}
