import 'package:flutter/material.dart';

class Appcolor {
  static Color orange = Color.fromRGBO(150, 77, 35, 1.0);
  static Color grey = Color.fromRGBO(112, 112, 112, 1);
  static Color grey300 = Colors.grey.shade300;
  static Color lightGrey = Color.fromRGBO(238, 238, 238, 1);
  static Color darkGray = Color.fromRGBO(70, 71, 78, 1.0);
  static Color black = Color.fromRGBO(24, 23, 23, 1.0);

  static  LinearGradient myGradient = LinearGradient(
    colors: [
      Color.fromRGBO(73, 15, 66, 1.0),
      Color.fromRGBO(188, 88, 38, 1.0),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

}