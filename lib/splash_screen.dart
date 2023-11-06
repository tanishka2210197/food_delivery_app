import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';
class splash extends StatefulWidget {
  const splash
      ({Key? key}) : super(key: key);

 splashState createState() =>splashState(); }

class splashState extends State<splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), ()
    {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    } );}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Colors.lightGreen, Colors.blue],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            // stops: [0.4, 0.7],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Text("Satisfy Your Cravings, Anytime, Anywhere"
            "Welcome to Dawat",style: TextStyle(fontSize: 30,color: Colors.black87,fontWeight: FontWeight.w700),
        ),


      ),
    );
  }}

