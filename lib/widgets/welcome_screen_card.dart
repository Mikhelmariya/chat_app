import 'package:flutter/material.dart';

class Welcome_screen_card extends StatelessWidget {
  Welcome_screen_card({required this.text});
  final String text;
  Widget build(BuildContext context) {
    return Card(
        color: Colors.teal,
        margin: EdgeInsets.only(left: 50, right: 50),
        child: ListTile(title: Text(text)));
  }
}

// Card(
//                 color: Colors.teal,
//                 margin: EdgeInsets.only(left: 50, right: 50),
//                 child: ListTile(
//                   leading: Hero(
//                     tag: "flutterlogo",
//                     child: CircleAvatar(
//                       radius: 25,
//                       backgroundImage: AssetImage("images/flutterlogo.png"),
//                     ),
//                   ),
//                   title: Text("Flutter Bootcamp -2023 "),
//                 ),
//               )),