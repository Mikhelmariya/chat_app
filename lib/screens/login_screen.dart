import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = "loginscreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailcontroller = new TextEditingController();
TextEditingController passwordcontroller = new TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  signIn(String emailcontroller, String passwordcontroller) async {
    showDialog(
        context: context,
        builder: ((context) {
          return Center(child: CircularProgressIndicator());
        }));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller, password: passwordcontroller);
      GoRouter.of(context).pushNamed(WelcomeScreen.id);
    } catch (Exception) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Invalid username or password"),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailcontroller,
              decoration: InputDecoration(
                labelText: "Enter email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passwordcontroller,
              obscureText: true, //to be seen like dots
              decoration: InputDecoration(
                  labelText: "Enter password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            ElevatedButton(
                onPressed: () {
                  signIn(emailcontroller.text, passwordcontroller.text);
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
