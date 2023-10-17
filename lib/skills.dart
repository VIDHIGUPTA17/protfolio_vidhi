import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myskill extends StatefulWidget {
  const myskill({super.key});

  @override
  State<myskill> createState() => _myskillState();
}

class _myskillState extends State<myskill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SKILLS")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 700,
            height: 260,
            margin: EdgeInsets.all(2),
            color: const Color.fromARGB(255, 255, 236, 169),
            child: Text(
              "JAVA SCRIPT",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(9),
          ),
           Container(
            width: 700,
            height: 260,
            margin: EdgeInsets.all(2),
            color: const Color.fromARGB(255, 255, 236, 169),
            child: Text(
              "JAVA SCRIPT",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(9),
          ),
           Container(
            width: 700,
            height: 260,
            margin: EdgeInsets.all(2),
            color: const Color.fromARGB(255, 255, 236, 169),
            child: Text(
              "JAVA SCRIPT",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(9),
          )
        ],
      ),
    );
  }
}
