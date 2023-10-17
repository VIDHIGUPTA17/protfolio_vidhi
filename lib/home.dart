import 'package:flutter/material.dart';


void main() {
  runApp(myhome());
}

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        appBar: AppBar(
        title: Text("EDUCATION"),
        
        //  shadowColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container( 
            
            width: 700,
            height: 100,
            margin: EdgeInsets.all(2),
            color: Color.fromARGB(255, 230, 183, 226),
            child:Column(children: [Text("School-Ch.chabbil dass public school",style: TextStyle(fontSize: 20),),Text("12th-90%",style: TextStyle(fontSize: 20),)],),
          
            padding: EdgeInsets.all(9),
          ),
          Container(

            width: 700,
            height: 100,
            margin: EdgeInsets.all(2),
            color: Color.fromARGB(255, 230, 183, 226),
            child: Column(children: [Text("College-Ajay Kumar Engineering college,",style: TextStyle(fontSize: 20),),Text("Degree-Currently pursuing BTECH (CSE ds)",style: TextStyle(fontSize: 20),)],),
            padding: EdgeInsets.all(9),
          ),
          
        ],
      ),);
  }
}