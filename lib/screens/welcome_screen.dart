import 'package:flash_chat/screens/apps.dart';
import 'package:flash_chat/screens/flutterbootcamp.dart';
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

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    controller.forward();
    controller.addListener(() {
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
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
          Text(
            "MY PORTFOLIO",
            style: TextStyle(color: Colors.white),
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
              child: Text("UI/UX Designs")),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (() {
                GoRouter.of(context).pushNamed(AppScreen.id);
              }),
              child: Text(
                " MY Applications",
              )),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (() {
                GoRouter.of(context).pushNamed(FlutterBootCamp.id);
              }),
              child: Card(
                color: Colors.white,
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
