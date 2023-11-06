import 'package:flutter/material.dart';
import 'package:food_deleivery_app/home.dart';
import 'login.dart';
class Welcome extends StatefulWidget{
  const Welcome ({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar:AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white),onPressed:() {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Login() ) );
        },),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login",style:TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 60,),),
            Column(
              children: [
                textField(
                  hintText:"Enter your email here",

                ),
                textField(
                  hintText: "Enter your password here",
                ),

              ],
            ),
            Container(
              width:400,
             height:70,
             child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black12,
                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),

              ),
                onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Homepage() ) );
            },
                 child:
                 Text("Continue",style:TextStyle(fontSize: 30),)

            ), ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children : [

              Text( " You are just one step away",style: TextStyle(fontSize: 25,color:Colors.black),),
           ] )
          ],

        ),
      ),
    );
  }



  textField({required String hintText}) {
    return TextFormField(
      decoration: InputDecoration(

          hintText: hintText,
          prefixIcon: Icon(Icons.person,color: Colors.black,),
          hintStyle: TextStyle(color: Colors.black87,),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            // borderRadius:BorderRadius()
          )
      ),);
  }
}


