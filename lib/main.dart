import 'package:flutter/material.dart';
 import 'package:food_deleivery_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';




// void main() => runApp(MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

  class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Food Deleivery',
  theme: ThemeData(

  primarySwatch: Colors.lightBlue,

  // scaffoldBackgroundColor: Colors.green[100],
  appBarTheme: AppBarTheme(
  backgroundColor: Colors.teal,

  )

  ),
  home:const splash(),
  );
  }
  }


