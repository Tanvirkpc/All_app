import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: About(),
    debugShowCheckedModeBanner: false,
  ));
}

//stless
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About_me"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/Assets/images/BG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 30.0, left: 30),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 40, backgroundImage: AssetImage("lib/Assets/images/photo_2023-09-30_14-47-39.jpg"),),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("S.M. Thahidul Islam", style: TextStyle(fontSize: 25, color: Colors.white , fontFamily: "Roboto"),),
                      Text("Android Developer", style: TextStyle(fontSize: 14,color: Colors.white70,fontFamily: "Robotor"),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.school, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("B.sc in CSE", style: TextStyle(fontSize: 18,color: Colors.white70,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.note_add_rounded, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("Android Portfolio App", style: TextStyle(fontSize: 18,color:Colors.white70,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_pin, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("Dhaka, Savar", style: TextStyle(fontSize: 18,color: Colors.white70,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("islam15-3949@diu.edu.bd", style: TextStyle(fontSize: 18,color: Colors.white70,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("+8801953363394", style: TextStyle(fontSize: 18,color: Colors.white70,fontFamily: "Robotor"),),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 60,),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("I am a 22 year old male with an optimistic vision. Currently, I am completing my graduation in Computer Science and Engineering. I have a goal to become a successful manin life. I always try stay in an euphoric mood. I help people whenever I can and capable of helping.", style: TextStyle(fontSize: 12,color: Colors.grey,fontFamily: "Robotor"),),
              ),
              SizedBox(height: 150,),
              Text("Created By THAHIDUL", style: TextStyle(fontSize: 12,color: Colors.blue,fontFamily: "Robotor"),),
            ],
          ),
        ),
      ),
    );
  }
}
