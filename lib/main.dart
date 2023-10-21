import 'package:flutter/material.dart';
 import 'package:food_deleivery_app/login.dart';

import 'package:food_deleivery_app/welcome.dart';

import 'login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Deleivery',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: Colors.purple.shade100,
        primarySwatch: Colors.teal,
      ),
      home:const Login(),
    );
  }
}


