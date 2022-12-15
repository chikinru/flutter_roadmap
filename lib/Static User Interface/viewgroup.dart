import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewGroup extends StatelessWidget {
  const ViewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Row(
        children: [
          Stack(
            children: [
              Expanded(
                  // expanded sẽ khiến child của mình tràn đầy cha của expanded, vd như trên sẽ tràn đầy Stack
                  child: ConstrainedBox(
                // constrainedbox sẽ khiến child của mình nằm trong một khoảng dài rộng có sẵn, không được vượt quá
                child: Container(),
                constraints: BoxConstraints(maxHeight: 100),
              ))
            ], // dồn hết các child lên nhau, thay đổi vị trí bằng Position
          )
        ],
      ), // chia các child theo dòng
    ]) //chia các child theo cột,
        );
  }
}
