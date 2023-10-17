import 'dart:ui';

import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:protfolio/about.dart';
import 'package:protfolio/home.dart';
import 'package:protfolio/skills.dart';
// import 'home.dart';
// import 'one.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter app",
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HIRE ME!!!"),
        //  shadowColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 100,
          ),
          Text(
            "VIDHI GUPTA",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                      width: 135,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          "ABOUT ME",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                             about()
                          ));
                        },
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          "EDUCATION",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                             myhome()
                          ));
                        },
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          "SKILLS",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                             myskill()
                          ));
                        },
                      ))
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          "Github",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 130,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          "LINKEDIN",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          "MAIL",
                          style: TextStyle(fontSize: 25),
                        ),
                        onPressed: () {},
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
