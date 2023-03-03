import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/ui_ux.dart';
import '../screens/apps.dart';
import '../screens/flutterbootcamp.dart';
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
        path: '/flutterbootcamp',
        name: FlutterBootCamp.id,
        pageBuilder: (context, state) {
          return MaterialPage(child: FlutterBootCamp());
        },
      ),
      GoRoute(
        path: '/login_screen',
        name: AppScreen.id,
        pageBuilder: (context, state) {
          return MaterialPage(child: AppScreen());
        },
      ),
      GoRoute(
        path: '/ui_ux',
        name: UIUX.id,
        pageBuilder: (context, state) {
          return MaterialPage(child: UIUX());
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
