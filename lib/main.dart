import 'package:flutter/material.dart';
import 'package:login_app/home_screen.dart';
import 'package:login_app/SplashScreen.dart';
import 'package:login_app/dummypage.dart';
import 'package:login_app/loginscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        "home": (context) => HomeScreen(),
        "login":(context) => FormScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}
