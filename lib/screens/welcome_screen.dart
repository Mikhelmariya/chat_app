import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  //The properties of this class is not changed from obj to object.so declare as static
  // constant value inside class should be made static
  // now the properties are associated with class rather than object
  static const String id = "WelcomeScreen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Navigator(
          initialRoute: WelcomeScreen.id,
          onGenerateRoute: (settings) {},
        ),
      ),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Flash chat"),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: (() {
                setState(() {
                  Navigator.pushNamed(context, LoginScreen.id);
                });
              }),
              child: Text("Log in")),
          SizedBox(
            height: 20,
          ),
          MaterialButton(onPressed: (() {}), child: Text("Register")),
        ],
      ),
    );
  }
}