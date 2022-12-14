import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inhertied extends InheritedWidget {
  final Color color;

  Inhertied({required this.color, required super.child});

  static Inhertied of(BuildContext context) {
    final Inhertied? result =
        context.dependOnInheritedWidgetOfExactType<Inhertied>();
    assert(result != null, 'No color found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Inhertied old) => color != old.color;
}

class InherTest extends StatelessWidget {
  const InherTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Inhertied(
          child: Builder(builder: (BuildContext innercontext) {
            return ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Green',
                  style: TextStyle(
                      color: Inhertied.of(innercontext)
                          .color), //mặc dù trỏ đến context bên trong nhưng chúng ta vẫn có thể dùng được biến color
                ));
          }),
          color: Colors
              .green // bất kể widgets nằm trong Inhertied đều được dùng biến color này,
          ),
    );
  }
}
