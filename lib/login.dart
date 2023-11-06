

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


            backgroundColor:Colors.green[50],

            appBar: AppBar(
                backgroundColor: Colors.teal,
                toolbarHeight: 80,
                leading: Icon(Icons.food_bank,size:50.0,),
                actions: [
            Padding(padding: const EdgeInsets.all(15.0)),],

         title: Text('Dawat' ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)), ),

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
                   // Padding(padding: const EdgeInsets.symmetric(),

                  Image.asset("assets/image1.jpeg",),
                  SizedBox(height: 30),
                  Text("Welcome,Foodies !!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black ,fontFamily: 'Raleway-Regular'),),
                  SizedBox(height: 40,),
                  Text("New Here ?, Sigin to continue",style:TextStyle(fontSize: 20),),
                  Container(
                    height: 60,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[200],
                      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),),

                      onPressed: () {

                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Signin() ) );
                  }, child: const Text("SIGN IN",style: TextStyle(fontSize: 28), ), ),),
                     SizedBox(height: 35,),

                         Text("Already a Customer? ,Login",style: TextStyle(fontSize: 20),),
                   Container(
                     height: 60,
                     width: 300,
                     child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.green[200], shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
                         ),
                         onPressed: () {

                       Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Welcome() ) );
                       }, child: Text("LOGIN",style: TextStyle(fontSize: 28),)),
                   ),
     //              SizedBox(height: 30,),
     //              Container(
     //                height: 60,
     //                  width: 300,
     //                  child: ElevatedButton(onPressed: () {}, child: Text("Continue with Google"))),


              ]
              )
              ),
             ) ;



  }  }





