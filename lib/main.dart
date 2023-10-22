import 'dart:ui';

// import 'dart:js';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:protfolio/about.dart';
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
  externallink(String url) async {
    // const url = 'https://github.com/VIDHIGUPTA17';
    // const url1 = 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  final double coverheigth = 220;
  final profileheigth = 140;

  @override
  Widget build(BuildContext context) {
    // final top = coverheigth - (70);
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: ListView(
          padding: EdgeInsets.zero,
          children: [buildstack(), buildcontent(context)]),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.message),
              label: "EMAIL",
              tooltip: "email",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.github),
                label: "G",
                tooltip: "GITHUB",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.hackerrank),
                label: "H",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.linkedinIn),
                label: "L",
                backgroundColor: Colors.blue),
          ],
          // currentIndex: 0,
          // selectedItemColor: Colors.white,

          onTap: (index) {
            print('Tapped index: $index');
            switch (index) {
              case 0:
                externallink(
                    'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox');
                break;
              case 1:
                externallink('https://github.com/VIDHIGUPTA17');
                break;
              case 2:
                externallink('https://www.hackerrank.com/VIDHIGUPTA17');
                break;
              case 3:
                externallink(
                    'https://www.linkedin.com/in/vidhi-gupta-26b0261b9/');
                break;
              default:
                break;
            }
          }),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.blueAccent,
        child: Image.asset('assests/images/appbarimage.png'),
        width: double.infinity,
        height: coverheigth,
      );

  Widget buildprofileimage() => CircleAvatar(
        radius: 90,
        backgroundImage: AssetImage('assests/images/img2.jpeg'),
      );

  Widget buildstack() => Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Container(margin: EdgeInsets.only(bottom: 800),),
            Container(
                margin: EdgeInsets.only(bottom: 100), child: buildCoverImage()),
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
        SizedBox(
          height: 15,
        ),
        Text(
          "Student ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'font2',
              color: Colors.grey,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 50,
        ),

        Wrap(
          children: <Widget>[
            // Padding(padding: EdgeInsets.only(bottom: 9)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Padding(padding:EdgeInsets.all(2)),
                Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 4,

                        // width,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10),
                        // color: Colors.blue,
                        decoration: BoxDecoration(

                            // color: Color(6)
                            // borderRadius: BorderRadius.circular(109),

                            // shape: BoxShape.circle
                            ),
                        child: ElevatedButton(
                          child: Text(
                            "ABOUT ME",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.034,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => about()));
                          },
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        // width: 150,
                        width: MediaQuery.of(context).size.width / 4,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            "EDUCATION",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.031,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => education()));
                          },
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        // width: 100,
                        width: MediaQuery.of(context).size.width / 4,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            "SKILLS",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.033,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => myskill()));
                          },
                        ))
                  ],
                ),
              ],
            ),
          ],
        )
      ]);
}
