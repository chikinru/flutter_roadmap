import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int counter = 0;
  void count() {
    setState(() {
      // dòng này sẽ tự động update state của biến counter mỗi khi nút cộng 1 nhấn ở dưới
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Counter ${counter}"),
          ElevatedButton(
              onPressed: () {
                count(); //function call ở đây thành công và biến counter đã tăng lên đồng thời với đó widgets cũng tự động update state của mình
                print(counter);
              },
              child: Text("Plus 1"))
        ],
      ),
    );
  }
}
