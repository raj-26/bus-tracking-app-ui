import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'welcomeloginpage_dart.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column (
    children: [
      Image.asset('images/route.png'),
    ],
        ),
      nextScreen: const WelcomePage(),
      splashIconSize: 455,
      duration: 1000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

