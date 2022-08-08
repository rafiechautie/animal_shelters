
import 'package:animal_shelters/screens/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:animal_shelters/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Project Submission Flutter Dicoding",
      theme: ThemeData(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



