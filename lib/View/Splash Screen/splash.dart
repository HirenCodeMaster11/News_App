import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home');
    },);
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/news-time-high-resolution-logo-white.png'),
      ),
    );
  }
}
