import 'dart:ui';

// import 'dart:js';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:protfolio/about.dart';
import 'package:protfolio/contact.dart';
import 'package:protfolio/education.dart';
import 'package:protfolio/skills.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter app",
      // theme: ThemeData(primarySwatch: Colors.white),
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  final double coverheigth = 220;
  final profileheigth = 140;
//hello people yoyoyo
  @override
  Widget build(BuildContext context) {
    // final top = coverheigth - (70);
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: ListView(
          padding: EdgeInsets.zero,
          children: [buildstack(context), buildcontent(context)]),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HOME",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.faceSmile),
                label: "G",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.school),
                label: "H",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.interests),
                label: "L",
                backgroundColor: Colors.blue),
          ],
          // currentIndex: 0,
          // selectedItemColor: Colors.white,

          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlutterApp()));
                break;
              case 1:
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => about()));
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => education()));
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => myskill()));
                break;
              default:
                break;
            }
          }),
    );
  }

  Widget buildCoverImage(BuildContext context) => Container(
        color: Colors.blueAccent,
        child: Image.asset(
          'assests/images/appbarimage.png',
          width: MediaQuery.of(context).size.width,
          height: coverheigth,
          fit: BoxFit.fill,
        ),
      );

  Widget buildprofileimage() => CircleAvatar(
        radius: 90,
        backgroundImage: AssetImage('assests/images/img2.jpeg'),
      );

  Widget buildstack(BuildContext context) => Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Container(margin: EdgeInsets.only(bottom: 800),),
            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: buildCoverImage(context)),
            Positioned(top: coverheigth / 2 + 30, child: buildprofileimage()),
          ]);

  Widget buildcontent(BuildContext context) =>
      Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        // const SizedBox(height: 20,),
        Text(
          "Vidhi Gupta",
          style: TextStyle(
              fontSize: 50, fontFamily: 'font2', fontWeight: FontWeight.bold),
        ),
        // SizedBox(
        //   height: 10,        ),
        Text(
          "Student ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'font2',
              color: Colors.grey,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),

        Wrap(
          children: <Widget>[
            // Padding(padding: EdgeInsets.only(bottom: 9)),

            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // Padding(padding:EdgeInsets.all(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => contact()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.contact_mail,
                          size: MediaQuery.of(context).size.width * 0.033,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          "Contact Me",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.033,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => myskill()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          size: MediaQuery.of(context).size.width * 0.033,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          "Share",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.033,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
      ]);
}
