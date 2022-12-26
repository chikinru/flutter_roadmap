import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

class DioClient {
  Future<void> getCatFact() async {
    try {
      final response = await Dio().get("https://catfact.ninja/fact");

      if (response.statusCode == 200) {
        print(response.data['fact']);
      } else {
        print(Exception("An error occured while getting cat fact"));
      }
    } catch (e) {
      print(e);
    }
  }
}

class DioX extends StatefulWidget {
  const DioX({super.key});

  @override
  State<DioX> createState() => _DioXState();
}

class _DioXState extends State<DioX> {
  DioClient client = new DioClient();
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
