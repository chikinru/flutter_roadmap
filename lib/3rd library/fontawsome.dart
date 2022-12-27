import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
          icon: FaIcon(FontAwesomeIcons.gamepad),
          onPressed: () {
            print("Pressed");
          }),
    );
  }
}
