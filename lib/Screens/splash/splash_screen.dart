// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:netflix_clone/Reusable%20Widgets/reusable_widgets.dart';
import 'package:netflix_clone/Screens/bottom%20navigation/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    waitForThreeSeconds();
    super.initState();
  }

  waitForThreeSeconds() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const BottomNavigation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body:  Center(
        child: Image.asset("assets/splashimage-5.jpg")
      ),
    );
  }
}
