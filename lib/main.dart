import 'dart:async';

import 'package:app2/newScreen.dart';
import 'package:app2/newScreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => newScreen2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/09/29/13/08/planet-1702788_960_720.jpg"))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.account_box_rounded,size:92,
            //   color: Colors.blueAccent,
            // ),
            Image.asset(
              "assets/images/home-icon.png",
              height: 190,
              // color: Color.fromARGB(255, 255, 255, 255)
              // ,
            ), // first way to add the img
            // Image(image: AssetImage("assets/images/home.png")),  //second waynto add the img
            const Text(
              "Welcome Back ",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
            )
          ],
        )),
      ),
    );
  }
}
