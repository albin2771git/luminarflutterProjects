import 'package:flutter/material.dart';

class newScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         image: NetworkImage(
        //             "https://cdn.pixabay.com/photo/2016/09/29/13/08/planet-1702788_960_720.jpg"))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.account_box_rounded,size:92,
            //   color: Colors.blueAccent,
            // ),
            Image.asset(
              "assets/images/home.png",
              height: 190,
              // color: Color.fromARGB(255, 255, 255, 255)
              // ,
            ), // first way to add the img
            // Image(image: AssetImage("assets/images/home.png")),  //second waynto add the img
            const Text(
              "Welcome To Home Page ",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0), fontSize: 24),
            )
          ],
        )),
      ),
    );
  }
}