
import 'package:crazy_music_app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '';
import '../controller/splash_controller.dart';

class SplashView extends StatelessWidget {
SplashView({Key? key}) : super(key: key);
final SplashController _controller = Get.put(SplashController());

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor:Colors.black12,
    body: Center(
        child: Container(
            width: 250,
            height: 300,
            child:Column(children: [
              SizedBox(height:6,),
              AnimatedContainer(
                duration: Duration(seconds: 4), // Animation duration
                curve: Curves.bounceInOut, // Animation curve
                width: 150.0, // Initial width
                height: 150.0, // Initial height
                child: Image.asset('assets/images/logo.png'), // Your logo asset
              ),
              SizedBox(height: 4,),
              Text("Listen to your Heart",
                style:TextStyle(
                    color: Appcolor.orange,
                  fontWeight: FontWeight.w700,
                ),),
              SizedBox(height: 5,),
              Text("Best free music streaming service the best free version of music app",
                style:TextStyle(
                  color: Appcolor.grey300,
                  fontWeight: FontWeight.w700,
                ),),
            ],)


        )
    ),
  );
}
}
