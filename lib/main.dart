import 'package:flutter/material.dart';
import 'package:netflix_clone/Screens/Splash%20Screen/splash.dart';


void main(List<String> args) {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        
      ),
      debugShowCheckedModeBanner: false,
      home : const SplashScreen(),
    );
  }
}
