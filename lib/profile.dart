import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart
      ({Key? key}) : super(key: key);

  _CartState createState() => _CartState(); }

class _CartState extends State<Cart> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(

      title: Text("My Cart",style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
    backgroundColor: Colors.teal,
    toolbarHeight: 80,

        actions: [SizedBox(height: 20,),
          Icon(Icons.shopping_bag_outlined,size: 35,),
       ]
      ),
      body:
       ListView(
         children: [
           SingleChildScrollView(
             child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical:30, ),
               child: Text("Order List",style: TextStyle(fontFamily: 'Roboto',fontSize: 30,fontWeight: FontWeight.bold),),

             ),
           )
         ],
       )


    );
  }
}