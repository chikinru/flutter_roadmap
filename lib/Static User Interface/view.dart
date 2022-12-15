import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text('abc'), // hiển thị một dòng chữ trong '' lên màn hình
          Image.asset(
              'assets/images/Bizarre-Botanicals-2.jpg'), // hiển thị ảnh lên màn hình
          ElevatedButton(onPressed: () {}, child: Text('nút'))
        ],
      )),
    );
  }
}
