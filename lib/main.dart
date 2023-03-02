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
    return MaterialApp(
      home: Scaffold(),
      initialRoute: WelcomeScreen.id, //static , no object creation
      routes: {
        WelcomeScreen.id: ((context) => WelcomeScreen()),
        LoginScreen.id: ((context) => LoginScreen()),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: ((context) => ChatScreen())
      },
    );
  }
}
