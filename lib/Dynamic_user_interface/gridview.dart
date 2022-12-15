import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Number of columns in the grid view
      children: List.generate(10, (index) {
        //Generates 10 items which will correspond to 10 elements in the list
        return Center(
          // Places each item in the center of its column or row
          child: Text(
            // Each element is a Text widget
            'Item $index', // Specifies it’s unique index number
            style: Theme.of(context)
                .textTheme
                .bodyLarge, // Sets the text style with a headline font size
          ),
        );
      }),
    );
  }
}
