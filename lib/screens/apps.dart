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
  final _descontroller = TextEditingController();

  final controller = PageController();

  static const String id = "apps";
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  var loggedinuser = "";
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

  // // For getting all datas in database , its like pulling the same everytime
  // void getMessages() async {
  //   final database = await _firestore.collection('work').get();
  //   for (var datas in database.docs) {
  //     print(datas.data());
  //   }
  // }

  // using stream but its not run automatically on trigger
  void messagesStream() async {
    await for (var snapshot in _firestore.collection('work').snapshots()) {
      for (var datas in snapshot.docs) {
        print(datas.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 400,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      controller: _titlecontroller,
                      style: TextStyle(color: Colors.tealAccent),
                      decoration: InputDecoration(
                        labelText: "Enter the title of your application",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.tealAccent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      controller: _descontroller,
                      style: TextStyle(color: Colors.tealAccent),
                      decoration: InputDecoration(
                        labelText: "Give a description for your project",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.tealAccent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      controller: _titlecontroller,
                      style: TextStyle(color: Colors.tealAccent),
                      decoration: InputDecoration(
                        labelText: "Provide a link to view your work",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.tealAccent),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            // StreamBuilder<QuerySnapshot>(
            //   stream: _firestore.collection('work').snapshots(),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       final datas = snapshot.data!.docs;
            //       List<Text> titleWidgets = [];
            //       for (var message in datas) {
            //         final titles = message.data.t;
            //       }
            //     }
            //   },
            // ),
            CarouselSlider(
              items: [
                My_App(
                  title: _titlecontroller.text,
                  description: _descontroller.text,
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
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  side: BorderSide(
                      color: Colors.greenAccent, width: 5), // Background color
                ),
                onPressed: () {
                  print("text");

                  print(_titlecontroller.text);

                  _firestore.collection("work").add({
                    'title': _titlecontroller.text,
                    'sender': loggedinuser,
                    'description': _descontroller.text,
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
