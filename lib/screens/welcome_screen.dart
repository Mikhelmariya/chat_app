import 'package:flash_chat/screens/apps.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/ui_ux.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        body: Welcome(),
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
          Text("MY PORTFOLIO"),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: (() {
                setState(() {
                  GoRouter.of(context).pushNamed(UIUX.id);
                });
              }),
              child: Text("UI/UX Designs")),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: (() {
                GoRouter.of(context).pushNamed(AppScreen.id);
              }),
              child: Text(" MY Applications")),
        ],
      ),
    );
  }
}
