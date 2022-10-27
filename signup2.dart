import 'package:app4_oct26/homePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signUp2 extends StatefulWidget {
  const signUp2({super.key});

  @override
  State<signUp2> createState() => _signUp2State();
}

class _signUp2State extends State<signUp2> {
        var formkey = GlobalKey<FormState>();
        bool viewpassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              SizedBox(
                height: 60,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("enter your name"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                ),
                validator: (name) {
                  if (name!.isEmpty || name.length < 3) {
                    return "enter valid name";
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
                SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("enter your email"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                ),
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@") ) {
                    return "enter valid email";
                  } else {
                    return null;
                  }
                },
                                textInputAction: TextInputAction.next,

              ),
                SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("enter your phonenumber"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                ),
                validator: (number) {
                  if (number!.isEmpty || number.length < 10) {
                    return "enter valid phonenumber";
                  } else {
                    return null;
                  }
                },
                                textInputAction: TextInputAction.next,

              ),
                SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("enter your username"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                ),
                validator: (username) {
                  if (username!.isEmpty || username.length < 3) {
                    return "enter valid username";
                  } else {
                    return null;
                  }
                },
                                textInputAction: TextInputAction.next,

              ),
                SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: viewpassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){setState((){
                    if(viewpassword){
                      viewpassword=false;
                    }else{
                      viewpassword=true;
                    }
                  });}, icon:Icon(viewpassword == true
                          ? Icons.remove_red_eye
                          : Icons
                              .password), ),
                  label: Text("enter your password"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                ),
                validator: (password) {
                  if (password!.isEmpty || password.length < 3) {
                    return "enter valid password";
                  } else {
                    return null;
                  }
                },
                                textInputAction: TextInputAction.next,

              ),
              SizedBox(height: 10,),
               TextFormField(
                obscureText: viewpassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){setState((){
                    if(viewpassword){
                      viewpassword=false;
                    }else{
                      viewpassword=true;
                    }
                  });}, icon:Icon(viewpassword == true
                          ? Icons.remove_red_eye
                          : Icons
                              .password), ),
                  label: Text("conform your password"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                ),
                validator: (conformpassword) {
                  if (conformpassword!.isEmpty || conformpassword.length < 3) {
                    return "enter valid password";
                  } else {
                    return null;
                  }
                },
                                textInputAction: TextInputAction.next,

              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 80, right: 80),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27)))),
                    onPressed: () {
                      final validate = formkey.currentState!.validate();
                      if (validate) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => HomePage()));
                      } else {
                        Fluttertoast.showToast(
        msg: "enter valid details",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
       // timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
                      }
                    },
                    child: Text("submit ")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
