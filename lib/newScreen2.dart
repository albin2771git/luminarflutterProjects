import 'package:flutter/material.dart';

class newScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "First App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, top: 30, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Username"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, top: 30, bottom: 10),
                child: TextField(
                  obscuringCharacter: "*",
                  obscureText: true,
                 // obscuringCharacter: "*",
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.password),
                  label: Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text("login")),
              TextButton(onPressed: () {}, child: Text("Not a User Click Here"))
            ],
          ),
        ));
  }
}
