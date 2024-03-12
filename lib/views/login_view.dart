import 'package:crazy_music_app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/custom_text.dart';
import '../const/cutom_button.dart';
import '../const/helper_function.dart';
import '../const/text_field_component.dart';
import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Appcolor.black,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:200 ,
              height:220,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/Crazylogo.png"))
              ),
            ),
                Padding(
        padding: const EdgeInsets.all(12.0),
        child:CustomTextField(
          controller:controller.emailController,
          focus:controller.emailFocus,
          onValidate:(str){
            return HelperFunction.checkEmail(str);
          },
          hintText: 'Enter your Email',
          icon: Icons.email_outlined,
        ),),
                Padding(
        padding: const EdgeInsets.all(12.0),
        child: Obx(() =>CustomTextField(
          controller:controller.passwordController,
          focus:controller.passwordFocus,
          onValidate:(str){
            return HelperFunction.checkPassword(str);
          },
          obscureText: true,
          hintText: 'Enter your Password',
          icon: Icons.fingerprint,
            suffixIcon:IconButton(onPressed:(){controller.showPassword();}, icon:Icon(controller.suffixIcon.value))
        ),
        ) ),
            const SizedBox(
              height: 10,
            ),
        
            Padding(
              padding: const EdgeInsets.fromLTRB(190,0,0,0,),
              child: Text('Forgot Password?',textAlign: TextAlign.center,
                style: TextStyle(color: Appcolor.grey300),),
            ),
            SizedBox(
              height: 30,
            ),
        
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Button(text: 'Login', onPressed: (){
                Get.toNamed('/dashboardScreen');
              },),
            ),
        
            SizedBox(height:20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              headingText2("Don't have an account? "),
        GestureDetector(
          onTap: (){
          Get.toNamed('/signupScreen');
            print("yes");
          },
            child: headingText2("Register"),
        )
            ],)
              ],),
      ),
    );
  }
}
