import 'package:app4_oct26/homePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class formValidation extends StatefulWidget {
  const formValidation({super.key});

  @override
  State<formValidation> createState() => _formValidationState();
}

class _formValidationState extends State<formValidation> {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("login validation"),
        ),
        body: Form(
          key: formkey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(child: Text("login Validation",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 30),
                child: TextFormField(
                  decoration: InputDecoration(label: Text("enter username"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
                  validator: (text){
                    if(text!.isEmpty || !text.contains("@")){
                      return "enter valid email";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,
                left: 40,right: 40),
                child: TextFormField(
                    decoration: InputDecoration(label: Text("enter password"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
                  validator: (password){
                   if(password!.isEmpty || password.length<5){
                    return "password length is less than 5";
                   }else{
                    return null;
                   }
                  },
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 60,right: 60),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      minimumSize: MaterialStateProperty.all(Size(60, 50 )),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(25)))),
                  onPressed: (){


                      final valid=formkey.currentState!.validate();
                      if(valid){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomePage()));
                      }else{
                        Fluttertoast.showToast(
        msg: "Enter valid details",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
                         
                      }



                  }, child: Text("Login",style:
                 TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),),
              )
               
            ],
          ),
        )
        );
  }
}
