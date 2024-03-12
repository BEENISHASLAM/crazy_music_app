import 'package:crazy_music_app/const/app_colors.dart';
import 'package:flutter/cupertino.dart';

Widget headingText1(String? title){
  return Text(title!, style: TextStyle(fontWeight: FontWeight.w600,color:Appcolor.grey300,fontSize: 20.0),);
}

Widget headingText2(String? title,){
  return Text(title!, style: TextStyle(fontWeight: FontWeight.w600,color:Appcolor.grey300,fontSize: 15.0),);
}
