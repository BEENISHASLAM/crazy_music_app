import '../views/dashboard_view.dart';
import '../views/login_view.dart';
import '../views/sign_up_view.dart';
import '../views/splash_view.dart';
import 'package:get/get.dart';

class AppRouting {
  static List<GetPage<dynamic>> routes  =[
    GetPage(name: "/splashScreen", page:()=>SplashView(),),
    GetPage(name: "/loginScreen", page:()=>LoginView(),),
    GetPage(name: "/signupScreen", page:()=>SignupView()),
    GetPage(name: "/dashboardScreen", page:()=>DashboardScreen()),
  ];
}