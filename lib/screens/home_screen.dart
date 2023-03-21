import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/welcome_screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String id = "homescreen";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (() {
                  GoRouter.of(context).pushNamed(LoginScreen.id);
                }),
                child: Welcome_screen_card(
                  text: 'Login',
                )),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: (() {
                  GoRouter.of(context).pushNamed(RegistrationScreen.id);
                }),
                child: Welcome_screen_card(
                  text: 'Register',
                )),
          ],
        ),
      ),
    );
  }
}
