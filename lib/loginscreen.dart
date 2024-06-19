import 'package:flutter/material.dart';
import 'package:login_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SplashScreen.dart';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passcontroller = TextEditingController();
  bool passToggle = true;

  //checking

  void login() async {
    String email = "akshay@gmail.com";
    String password = "akshay123";

    if (emailController.text == email && passcontroller.text == password) {
      final _sharedPref = await SharedPreferences.getInstance();
      await _sharedPref.setBool(SAVE_KEY_NAME, true);

      Navigator.pushReplacementNamed(context, "home");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Login successful!'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text("Login Error"),
                content: const Text('Invalid username or password.'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("OK")),
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              key: _formfield,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/boy.png",
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(height: 80),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email address';
                      }
                      if (!value.contains('@')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passcontroller,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(
                          passToggle ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      if (_formfield.currentState!.validate()) {
                        login();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      "Log In",
                      style: TextStyle(fontSize: 18,color:Colors.black),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New User?",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPref = await SharedPreferences.getInstance();

    final userLoggedIn = _sharedPref.getBool(SAVE_KEY_NAME);
    if (userLoggedIn == null || userLoggedIn == false) {
    } else {
      Navigator.pushReplacementNamed(context, "home");
    }
  }
}
