
import 'package:crazy_music_app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import '';
import '../controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  SplashView({Key? key}) : super(key: key);
  final SplashController _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff000000), // Top color
              Color(0xff964d23), // Bottom color
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "Find Your",
                  style: TextStyle(
                    color: Appcolor.grey300,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  "Favourite",
                  style: TextStyle(
                    color: Appcolor.grey300,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  "Music",
                  style: TextStyle(
                    color: Appcolor.orange,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),),

                Container(
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Find Your Latest Music here in Crazy Music App ",
                      style: TextStyle(
                        color: Appcolor.grey300,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: Appcolor.myGradient,
                    borderRadius:BorderRadius.all(Radius.circular(50.0),),
                  ),
                  child: Center(
                    child: Text("Get Started",
                      style: TextStyle(
                        color: Appcolor.grey300,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  )
                  ,
                ),
                SizedBox(height: 10),
                Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Crazzy.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



