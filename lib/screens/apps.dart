import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import '../model/projects.dart';
import '../widgets/my_apps.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

String _titletext = "app";

class AppScreen extends StatelessWidget {
  final _titlecontroller = TextEditingController();

  final controller = PageController();

  static const String id = "apps";
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser!;
      if (user != null) {
        var loggedinuser = user;
        print(loggedinuser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              controller: _titlecontroller,
              // onChanged: (value) {
              //   _titletext = value;
              // },
            ),
            CarouselSlider(
              items: [
                My_App(
                  title: _titlecontroller.text,
                  description:
                      "This app generates random bible verse on tapping the button",
                  image: "images/bible.png",

                  //_launchUrl("https://bible-verse-generator.web.app/"),
                ),
                //   My_App(
                //     title: "Tic Tac Toe ",
                //     description: "Try this out ",
                //     image: "images/xox.png",
                //   ),
                //   My_App(
                //     title: "Let's Quiz",
                //     description: "Try this out ",
                //     image: "images/quizapp.png",
                //   ),
                //   My_App(
                //     title: "Me Myself",
                //     description: "check this out ",
                //     image: "images/MI.png",
                //   ),
              ],
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: MediaQuery.of(context).size.height * .75),
            ),
            ElevatedButton(
                onPressed: () {
                  print("text");

                  print(_titlecontroller.text);

                  _firestore.collection("work").add({
                    'title': _titlecontroller.text,
                    'sender': "mikhela65@gmail.com",
                    'description': "desc",
                    'link': ""
                  });
                },
                child: Text("ADD "))
          ],
        ),
      ),
    );
  }
}
