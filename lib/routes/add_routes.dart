import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/chat_screen.dart';
import '../screens/login_screen.dart';
import '../screens/registration_screen.dart';
import 'constant_routes.dart';

class Addroutes {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: Constant.WelcomeScreenRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: WelcomeScreen());
        },
      ),
      GoRoute(
        path: '/registration_screen',
        name: RegistrationScreen.id,
        pageBuilder: (context, state) {
          return MaterialPage(child: RegistrationScreen());
        },
      ),
      GoRoute(
        path: '/login_screen',
        name: LoginScreen.id,
        pageBuilder: (context, state) {
          return MaterialPage(child: LoginScreen());
        },
      ),
      GoRoute(
        path: '/chat_screen',
        name: ChatScreen.id,
        pageBuilder: (context, state) {
          return MaterialPage(child: ChatScreen());
        },
      )
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
          child: MaterialApp(
        home: Scaffold(body: Text("errror!!")),
      ));
    },
  );
}
