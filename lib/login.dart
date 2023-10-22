

import 'package:flutter/material.dart';
import 'package:food_deleivery_app/sigin.dart';
import 'welcome.dart';

class Login extends StatefulWidget {
  const Login
      ({Key? key}) : super(key: key);

  LoginState createState() => LoginState(); }

class LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


            backgroundColor:Colors.green[100],

            appBar: AppBar(
                backgroundColor: Colors.teal,
                toolbarHeight: 100,
                leading: Icon(Icons.food_bank,size:50.0,),
                actions: [
            Padding(padding: const EdgeInsets.all(15.0)),],

         title: Text('DAWAT' ,style: TextStyle(fontSize: 40,)), ),

            body:
            // Container(
            //     decoration: const BoxDecoration(
            //         gradient: LinearGradient(colors:[
            //    Colors.red,
            //           Colors.blue,
            //         ] )
            //
            //     )
            //
            // ),

             Center( child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Padding(padding: padding)
                  Image.asset("assets/logo.jpg",),
                  SizedBox(height: 30,),
                  Text("Welcome,Foodies !!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red ),),
                  SizedBox(height: 40,),
                  Text("New Here ?, Sigin to continue",style:TextStyle(fontSize: 20),),
                  Container(
                    height: 60,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Signin() ) );
                  }, child: Text("SIGN IN")), ),
                  SizedBox(height: 30,),

                         Text("Already a Customer? ,Login"),
                   Container(
                     height: 60,
                     width: 300,
                     child: ElevatedButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Welcome() ) );
                       }, child: Text("Login")),
                   ),
                  SizedBox(height: 30,),
                  Container(
                    height: 60,
                      width: 300,
                      child: ElevatedButton(onPressed: () {}, child: Text("Continue with Google"))),
     ],

              )

              ),
    );



  }  }





