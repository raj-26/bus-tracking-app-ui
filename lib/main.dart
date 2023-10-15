
import 'package:flutter/material.dart';
import 'splash_screen.dart';
// import 'bottom_navigation_bar.dart';
// import 'login_page.dart';
//the belong pakcgae is used for splash screen
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}







