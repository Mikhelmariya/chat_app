import 'package:flash_chat/routes/add_routes.dart';
import 'package:flash_chat/screens/ui_ux.dart';
import 'package:flash_chat/screens/apps.dart';
import 'package:flash_chat/screens/flutterbootcamp.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
