import 'package:crazy_music_app/routes/page_routing.dart';
import 'package:crazy_music_app/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
        useMaterial3: true,
      ),

      getPages: AppRouting.routes,
      initialRoute: '/splashScreen',


    );
  }
}


