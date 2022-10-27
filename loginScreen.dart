import 'package:app4_oct26/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool viewpassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          "CAR CARE",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                "Login Page",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),
              ),
            ),
         const   Padding(
              padding: const EdgeInsets.only(top: 40, left: 60, right: 60),
              child: TextField(
                  decoration: InputDecoration(
                      label: Text("Username"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25))))),
            ),
           
               Padding(
                 padding: const EdgeInsets.only(top: 20 , left: 60, right: 60),
                 child: TextField(
                  // obscuringCharacter: "*",

                  obscureText: viewpassword,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (viewpassword) {
                              viewpassword = false;
                            } else {
                              viewpassword = true;
                            }
                          });
                        },
                        icon: Icon(viewpassword == true
                            ? Icons.remove_red_eye
                            : Icons
                                .password), //icon: Icon(viewpassword==true ? Icons.remove_red_eye : Icons.password)
                      ),
                      //  prefixIcon: const Icon(Icons.password_rounded),
                      label: Text("password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
              ),
               ),
          
            Padding(
            padding: const EdgeInsets.only(top: 20 ),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    minimumSize: MaterialStateProperty.all(Size(220, 50 )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
                },
                child: Text(
                  "Login ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
          ),
          Row(
            children: [
              
              Padding(
                padding: const EdgeInsets.only(left: 150  ),
                child: Text("dont have an account ?"),
              ),
            TextButton(
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>signUpPage()));
              },
              child: Text("Sign Up "),
            ),
            ],
          )
           
          ],
        ),
      )),
    );
  }
}
