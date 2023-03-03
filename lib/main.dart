import 'package:flash_chat/routes/add_routes.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Flashchat());
}

class Flashchat extends StatelessWidget {
  const Flashchat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: Addroutes().router.routeInformationParser,
      routerDelegate: Addroutes().router.routerDelegate,
    );
  }
}
