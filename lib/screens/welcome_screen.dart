import 'package:flash_chat/screens/apps.dart';
import 'package:flash_chat/screens/flutterbootcamp.dart';
import 'package:flash_chat/screens/ui_ux.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../widgets/welcome_screen_card.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = ColorTween(begin: Colors.teal.shade500, end: Colors.black)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: animation.value,
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
          TyperAnimatedTextKit(
            text: ["MY PORTFOLIO"],
            textStyle: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (() {
                setState(() {
                  GoRouter.of(context).pushNamed(UIUX.id);
                });
              }),
              child: Welcome_screen_card(
                text: 'MACHINE LEARNING',
              )),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (() {
                GoRouter.of(context).pushNamed(AppScreen.id);
              }),
              child: Welcome_screen_card(
                text: 'FLUTTER',
              )),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (() {
                GoRouter.of(context).pushNamed(FlutterBootCamp.id);
              }),
              child: Card(
                color: Colors.teal,
                margin: EdgeInsets.only(left: 50, right: 50),
                child: ListTile(
                  leading: Hero(
                    tag: "flutterlogo",
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/flutterlogo.png"),
                    ),
                  ),
                  title: Text("Flutter Bootcamp -2023 "),
                ),
              )),
        ],
      ),
    );
  }
}
