import 'package:flutter/material.dart';

class My_App extends StatelessWidget {
  My_App(
      {required this.title,
      required this.description,
      required this.image,
      required this.link});
  final String title;
  final String description;
  final String image;
  final String link;

  @override
  Widget build(BuildContext context) {
    @required
    My_App app;
    return Container(
      height: 400,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Text(
            description,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Spacer(),
          Image.asset(image),
        ],
      ),
    );
  }
}
