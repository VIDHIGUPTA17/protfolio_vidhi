import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class myskill extends StatefulWidget {
  const myskill({super.key});

  @override
  State<myskill> createState() => _myskillState();
}

class _myskillState extends State<myskill> {
  externallink(String url) async {
    // const url = 'https://github.com/VIDHIGUPTA17';
    // const url1 = 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  final double coverheigth = 220;

  var opcapacity = 0.0;
  var opcapacity1 = 0.0;
  var opcapacity2 = 0.0;
  var opcapacity3 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SKILLS")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(padding: EdgeInsets.all(3)),
            Container(
              child: Image.asset(
                'assests/images/skill.jpg',
                fit: BoxFit.fill,
              ),
              width: double.infinity,
              height: coverheigth,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                onPressed: () {
                  // opcapacity = 1;
                  setState(() {
                    opcapacity2 = 1.0;
                  });
                },
                child: const Text("HTML,CSS"),
              ),
            ),
            AnimatedOpacity(
              opacity: opcapacity2,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                height: 70,
                margin: const EdgeInsets.all(6),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I have made a Akgec Website clone using HTML CSS",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                  onPressed: () {
                    // opcapacity = 1;
                    setState(() {
                      opcapacity = 1.0;
                    });
                  },
                  child: const Text("Java Script")),
            ),
            AnimatedOpacity(
              opacity: opcapacity,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                height: 70,
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I made a Brick Breaker Game using java script,html canvas.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                  onPressed: () {
                    // opcapacity = 1;
                    setState(() {
                      opcapacity1 = 1.0;
                    });
                  },
                  child: const Text("Competetive Programming")),
            ),
            AnimatedOpacity(
              opacity: opcapacity1,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                height: 70,
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I am Silve Badge in Problem Solving on Hackerrank",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                  onPressed: () {
                    // opcapacity = 1;
                    setState(() {
                      opcapacity3 = 1.0;
                    });
                  },
                  child: const Text("Flutter")),
            ),
            AnimatedOpacity(
              opacity: opcapacity3,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                // height: 50,
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I have made a protfolio using Flutter.",
                  style: TextStyle(fontSize: 20),
                ),
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
