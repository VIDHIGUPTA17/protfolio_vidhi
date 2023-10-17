import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _myskillState();
}

class _myskillState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(
            
            width: 700,
            
            height: 260,
            margin: EdgeInsets.all(2),
            color: Color.fromARGB(255, 230, 183, 226),
            child: Text(
              "Hello, I'm Vidhi Gupta, a passionate and dedicated student pursuing a Bachelor's degree in Technology. My primary focus lies in competitive programming, where I thrive in solving complex problems and honing my coding skills.",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(9),
          ),
          Container(
            width: 700,
            height: 260,
            margin: EdgeInsets.all(2),
            color: Color.fromARGB(255, 230, 183, 226),
            child: Text(
              "I am driven to continuously enhance my coding proficiency and expand my knowledge in [mention areas of interest]. Looking forward to engaging in challenging projects that push my boundaries and contribute to my growth as a tech enthusiast.",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(9),
          )
        ],
      ),
    );
  }
}
