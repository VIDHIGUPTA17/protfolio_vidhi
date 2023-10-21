import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(education());
}

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  externallink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EDUCATION"),

        //  shadowColor: Colors.yellow,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20),
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              title: Text("School-Ch.chabbil dass public school"),
              subtitle: Text("Intermediate-90%"),
              tileColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70)),
              leading: Icon(Icons.school),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              title: Text("College-Ajay Kumar Engineering college"),
              subtitle: Text("Degree-Currently pursuing BTECH (CSE ds)"),
              tileColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70)),
              leading: Icon(Icons.school),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
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
