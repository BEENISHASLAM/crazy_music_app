import 'package:crazy_music_app/const/app_colors.dart';
import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final String text;
  final  onPressed;

  Button({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: Appcolor.myGradient
        ),
        child: Center(
          child:
          Text(text, style: TextStyle(color:Appcolor.grey300,fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );

  }
}