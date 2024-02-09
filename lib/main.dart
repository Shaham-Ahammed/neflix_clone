import 'package:flutter/material.dart';
import 'package:netflix_clone/Screens/Bottom%20Navigation/bottom_navigation.dart';


void main(List<String> args) {
  runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        
      ),
      debugShowCheckedModeBanner: false,
      home : BottomNavigation(),
    );
  }
}
