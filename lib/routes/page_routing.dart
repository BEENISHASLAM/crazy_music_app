import '../views/splash_view.dart';
import 'package:get/get.dart';

class AppRouting {
  static List<GetPage<dynamic>> routes  =[
    GetPage(name: "/splashScreen", page:()=>SplashView(),),
  ];
}