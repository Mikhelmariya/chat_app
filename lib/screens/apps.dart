import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../model/projects.dart';
import '../widgets/my_apps.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});
  static const String id = "apps";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: CarouselSlider(
        items: [
          My_App(
            title: "Bible Verse Generator",
            description:
                "This app generates random bible verse on tapping the button",
            image: "images/bible.png",
            link: "",
          ),
          My_App(
            title: "Tic Tac Toe ",
            description: "Try this out ",
            image: "images/xox.png",
            link: "",
          ),
          My_App(
            title: "Let's Quiz",
            description: "Try this out ",
            image: "images/quizapp.png",
            link: "",
          ),
          My_App(
            title: "Me Myself",
            description: "check this out ",
            image: "images/MI.png",
            link: "",
          ),
        ],
        options: CarouselOptions(
            enableInfiniteScroll: false,
            height: MediaQuery.of(context).size.height * .75),
      )),
    );
  }
}
