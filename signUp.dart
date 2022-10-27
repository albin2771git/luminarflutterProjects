import 'package:app4_oct26/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class signUpPage extends StatefulWidget {
  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  //const signUpPage({super.key});
  bool viewpassword = true;

      var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   //var formkey = GlobalKey<FormState>();

    return Scaffold(
      
      
      appBar: AppBar(title: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,),
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.only(left: 40,right: 40 ),
          child:
         ListView(children: [
          SizedBox(height: 60,),
           TextFormField(
            decoration:InputDecoration(label: Text("enter your name"),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
            ) ,
            validator: (name){
                      if(name!.isEmpty || name.length<3){
                        return "enter valid email";
                      }else{
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.next,
           ),
           Padding(
             padding: const EdgeInsets.only(top: 30,left: 80,right: 80 ),
             child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27)))
              ),
              onPressed: (){
                final validate=formkey.currentState!.validate();
                if(validate){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomePage()));
                }else{
                  print("signUp unsucessfull");
                }
              }, child: Text("submit ")),
           )
        ],),),
      ),
    );
  }
}
