import 'package:flutter/material.dart';
import 'welcome.dart';

class Login extends StatefulWidget {
  const Login
      ({Key? key}) : super(key: key);

  LoginState createState() => LoginState(); }

class LoginState extends State<Login> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // height: 50,
     //    width: 50,
     //    decoration: const BoxDecoration(
     //        image: DecorationImage(
     //          image: AssetImage("assets/background.jpg"),
     //          fit: BoxFit.cover,
     //        )
     //    ),

            backgroundColor:Colors.red[100],

            appBar: AppBar(
                backgroundColor: Colors.teal,
                // AppBar.preferredHeightFor(context, 50 as Size),
                title: Text('DAWAT' )),
            // toolbarHeight: 100,
            body:
            Center( child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/dawat2.jpg"),
                SizedBox(height: 30,),
                Text("Welcome,Foodies !!",style: TextStyle(fontSize: 30,),),
                SizedBox(height: 40,),
                Text("New Here ?, Sigin to continue",),
                Container(
                  height: 60,
                width: 300,
                child: ElevatedButton(onPressed: () {}, child: Text("SIGN IN")), ),
                SizedBox(height: 30,),



                       Text("Already a Customer? ,Login"),
                 ElevatedButton(onPressed: () {
                   // Navigator.pushNamed(context, MaterialPageRoute(
                   //    builder: (context) => Welcome() ) );
                   }, child: Text("Login")),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {}, child: Text("Continue with Google")),


               

              ], )
            ),
    );



  }  }


