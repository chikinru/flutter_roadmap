import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpansionTitle extends StatefulWidget {
  const ExpansionTitle({super.key});

  @override
  State<ExpansionTitle> createState() => _ExpansionTitleState();
}

class _ExpansionTitleState extends State<ExpansionTitle> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        title: Text('nice'),
        trailing: Icon(
          _customTileExpanded
              ? Icons.arrow_drop_down_circle
              : Icons.arrow_drop_down,
        ),
        children: [Text('1'), Text('2')],
      ),
    );
  }
}
