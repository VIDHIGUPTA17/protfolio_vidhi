import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _myskillState();
}

class _myskillState extends State<about> {
  externallink(String url) async {
    // const url = 'https://github.com/VIDHIGUPTA17';
    // const url1 = 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: const Text(
                "ABOUT ME",
                style: TextStyle(
                    fontSize: 45,
                    fontFamily: 'font2',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // margin: EdgeInsets.all(2),
              // color: Color.fromARGB(255, 230, 183, 226),
              padding: const EdgeInsets.all(9),
              // margin: EdgeInsets.all(2),
              // color: Color.fromARGB(255, 230, 183, 226),
              child: const Text(
                "Hello, I'm Vidhi Gupta, a passionate and dedicated student pursuing a Bachelor's degree in Technology. My primary focus lies in competitive programming, where I thrive in solving complex problems and honing my coding skills.I am driven to continuously enhance my coding proficiency and expand my knowledge in Android Development. Looking forward to engaging in challenging projects that push my boundaries and contribute to my growth as a tech enthusiast.",
                style: TextStyle(fontSize: 20, fontFamily: 'font1'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.message),
                label: "EMAIL",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.github),
                label: "git",
                tooltip: "GITHUB",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.hackerrank),
                label: "HACKERRANK",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.linkedinIn),
                label: "LINKEDIN",
                backgroundColor: Colors.blue),
          ],
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
}
