import 'package:flutter/material.dart';
import 'home.dart';
class screens extends StatefulWidget {
  const screens
      ({Key? key}) : super(key: key);

  _screensState createState() => _screensState(); }

class _screensState extends State<screens> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        const Padding(padding: EdgeInsets.all(3)),
    Container(
    child: Image.asset(
    'assets/burger.jpg',
    fit: BoxFit.fill,
    ),
    width: double.infinity,

    ),])

    );}}
