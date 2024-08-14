import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/View/Detail%20Screen/detail.dart';

import 'View/Home Screen/home screen.dart';
import 'View/Splash Screen/splash.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => SplashScreen(),),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/detail', page: () => DetailScreen())
      ],
    );
  }
}
