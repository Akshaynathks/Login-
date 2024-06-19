import 'package:flutter/material.dart';
import 'package:login_app/home_screen.dart';
import 'package:login_app/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SAVE_KEY_NAME = "UserLoggedIn";
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkUserLoggedIn();
  }

  void checkUserLoggedIn() async {
    final _sharedPref = await SharedPreferences.getInstance();
    final userLoggedIn = _sharedPref.getBool(SAVE_KEY_NAME);
    Future.delayed(const Duration(seconds: 1), () {
      if (userLoggedIn == true) {
        Navigator.pushReplacementNamed(context, "home");
      } else {
       Navigator.pushReplacementNamed(context, "login");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
