import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stateless extends StatelessWidget {
  int counter = 0;
  void count() {
    counter += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Counter ${counter}"),
          ElevatedButton(
              onPressed: () {
                count(); //function call ở đây thành công
                print(
                    counter); // biến counter đã tăng lên trên console nhưng trên widgets không update vì stateless widget không tự update trạng thái
              },
              child: Text("Plus 1"))
        ],
      ),
    );
  }
}
