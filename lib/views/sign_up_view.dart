import 'package:crazy_music_app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../const/custom_text.dart';
import '../const/cutom_button.dart';
import '../const/text_field_component.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Appcolor.black,
      body:SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width:200 ,
              height:220,
        
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Crazylogo.png"))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomTextField(
                controller: TextEditingController(),
                hintText: 'Enter your Name',
                icon: Icons.person,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomTextField(
                controller: TextEditingController(),
                hintText: 'Enter your Email',
                icon: Icons.email_outlined,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomTextField(
                obscureText: true,
                controller: TextEditingController(),
                hintText: 'Enter your Password',
                icon: Icons.fingerprint,
              ),
            ),
            SizedBox(
              height: 10,
            ),
        
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Button(text: 'Register', onPressed: (){},),
            ),
        
            SizedBox(height:20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                headingText2("If you have account? "),
                GestureDetector(
                    onTap: (){
                      Get.toNamed('/loginScreen');
                    },
                    child: headingText2("Signup")
                )
              ],)
        
        
          ],),
      ),
    );
  }
}
