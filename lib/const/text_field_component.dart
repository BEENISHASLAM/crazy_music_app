import 'package:crazy_music_app/const/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obscureText;
   final focus;
   final onValidate;
   final  Widget? suffixIcon;


  CustomTextField({
    required this.controller,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.focus,
    this.onValidate,
    this.suffixIcon,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Icon(icon,color:Appcolor.grey300,),
          SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor:Appcolor.grey300,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: Appcolor.grey300),


              ),
              obscureText: obscureText,
              style: TextStyle(color: Appcolor.grey300),
            ),
          ),
        ],
      ),
    );
  }
}
