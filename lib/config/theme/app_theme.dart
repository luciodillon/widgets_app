import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.pinkAccent,
  Colors.yellow,
  Colors.green,
  Colors.purple,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
    })
      : assert(selectedColor >= 0, 'Selected color must be greater than 0.'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
      );
}
