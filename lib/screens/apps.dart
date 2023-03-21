import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../model/projects.dart';
import '../widgets/my_apps.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class AppScreen extends StatelessWidget {
  final controller = PageController();

  static const String id = "apps";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey,
          body: CarouselSlider(
            items: [
              My_App(
                title: "Bible Verse Generator",
                description:
                    "This app generates random bible verse on tapping the button",
                image: "images/bible.png",

                //_launchUrl("https://bible-verse-generator.web.app/"),
              ),
              My_App(
                title: "Tic Tac Toe ",
                description: "Try this out ",
                image: "images/xox.png",
              ),
              My_App(
                title: "Let's Quiz",
                description: "Try this out ",
                image: "images/quizapp.png",
              ),
              My_App(
                title: "Me Myself",
                description: "check this out ",
                image: "images/MI.png",
              ),
            ],
            options: CarouselOptions(
                enableInfiniteScroll: false,
                height: MediaQuery.of(context).size.height * .75),
          )),
    );
  }
}
