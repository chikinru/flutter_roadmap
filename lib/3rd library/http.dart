import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  Future<void> getCatFact() async {
    Map<String, dynamic> catFact;
    try {
      var response = await http.get(Uri.parse('https://catfact.ninja/fact'));
      if (response.statusCode == 200) {
        catFact = jsonDecode(response.body); //cat fact stored in here
        print(catFact['fact']);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}

class Http extends StatefulWidget {
  const Http({super.key});

  @override
  State<Http> createState() => _HttpState();
}

class _HttpState extends State<Http> {
  HttpClient client = new HttpClient();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          client.getCatFact();
        },
        child: Text('test'),
      ),
    );
  }
}
