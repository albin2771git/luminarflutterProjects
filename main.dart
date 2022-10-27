import 'dart:async';


import 'package:app4_oct26/formValidation.dart';
import 'package:app4_oct26/signUp.dart';
import 'package:app4_oct26/signup2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';
import 'loginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: splash(),
  ));
}

class splash extends StatelessWidget {
  @override
  // void initState() {
  //   Timer(Duration(seconds: 2), () {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => loginScreen()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Text(
              "SPLASH SCREEN",
              style: TextStyle(
                  color: Color.fromARGB(255, 75, 77, 78),
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            "assets/images/car_care_splashScreen.png",
            height: 220,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => formValidation(),
                        ));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  )),
              Text("or"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signUp2(),
                        ));
                  },
                  child: Text("SignUp",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ],
          ),
          Container(
            //color: Colors.blue,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.blue),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => HomePage()));
                },
                icon: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ],
      )),
    );
  }
}
