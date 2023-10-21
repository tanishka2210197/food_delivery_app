// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:food_deleivery_app/login.dart';
import 'package:food_deleivery_app/welcome.dart';
import 'package:food_deleivery_app/main.dart';
class Welcome extends StatefulWidget{



  const Welcome ({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar:AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white),onPressed: null,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Login",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
       Column(
         children: [
           textField(
             hintText:"Enter yout email here",

           ),
         textField(
           hintText: "Enter your password here",
         ),

      ],
       )
        ],
      ),
    );
  }



textField({required String hintText}) {
  return TextFormField(
    decoration: InputDecoration(

        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white,),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          // borderRadius:BorderRadius()
        )
    ),);
}
}
