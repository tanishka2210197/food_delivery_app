import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';
// import  'package:flutter/painting.dart.';
// import 'package:flutter/src/widgets/container.dart';

class Homepage extends StatefulWidget {
  const Homepage
      ({Key? key}) : super(key: key);

  _HomepageState createState() => _HomepageState(); }

class _HomepageState extends State<Homepage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("DAWAT",style:TextStyle(fontSize: 30),),
        backgroundColor: Colors.teal,
        toolbarHeight: 100,
        leading: Icon(Icons.food_bank),
        actions: [
          Padding(padding: const EdgeInsets.all(9.0)),
          CircleAvatar(
            // backgroundImage:AssetImage(),
          )
        ],
      ),
body:
      Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    TextField(
      decoration:InputDecoration(
        hintText: "Search food here",
        prefixIcon: Icon(Icons.search,color: Colors.black,),
        fillColor: Color(0xFFC8E6C9),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ) ,
    ),


    // Container(
    // height: 80,
    // width: 80,
    // decoration: BoxDecoration(
    // image: const DecorationImage(image: AssetImage("assets/burger.jpg")
    //
    // ),
    // borderRadius: BorderRadius.circular(10),
    // color: Colors.green[100]
    // ),
    // ),
    //     SizedBox(height: 15,),
    //     Text("Choose your favourite now",style: TextStyle(fontSize: 20),),
    //

    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          categoriesContainer(image: "assets/pizza1.jpg",
            name: "ALL",
          ),
          categoriesContainer(image: "assets/burger.jpg",
            name: "Burger",
          ),
          categoriesContainer(image: "assets/dosa.jpg",
            name: "Dosa",
          ),
          categoriesContainer(image: "assets/biryani.jpeg",
            name: "Biryani",
          ),
          categoriesContainer(image: "assets/pastry.jpg",
            name: "Pastries",
          ),

        ],
      ),

    ) ,
 SizedBox(height: 20,),
     SingleChildScrollView(
       scrollDirection: Axis.vertical,
    child:Container(
    height: 510,
    child: GridView.count(
    shrinkWrap: false,
    primary: false,
    childAspectRatio: 0.8,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20 ,
    crossAxisCount: 2,
    children:[

    AllContainers(
    image: "assets/pizza1.jpg",
    name: "Authentic Pizza",
    price: "Rs 250",
    ),
    AllContainers(
    image: "assets/burger.jpg",
    name: "Cheese Burger",
    price: "Rs 100",
    ),
    AllContainers(
    image: "assets/chole_bathure.jpg",
    name: "Chole Bathure",
    price: "Rs 200",
    ),
    AllContainers(
    image: "assets/coffee.jpeg",
    name: "Cold Coffee",
    price: "Rs 180",
    ),AllContainers(
        image: "assets/biryani.jpeg",
        name: "Veg Biryani",
        price: "Rs 300",
      ),AllContainers(
        image: "assets/noodles.jpg",
        name: "Noddles",
        price: "Rs 150",
      ),


    ]


    ),
    ) ) ]
    ),
);

  } }

categoriesContainer({required String image ,required String name}) {

    return Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height:80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)

                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[100]
            ),

          ),
              SizedBox(height: 15,),
                   Text(name)  ] );  }
 AllContainers({ required String image,required String name,required String price}) {
  return Container(

    height: 250,
    width: 220,
    decoration: BoxDecoration(
        color:Colors.green[100],
        borderRadius: BorderRadius.circular(10)
    ),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage(image),

        ),
        ListTile(leading: Text(name,style: TextStyle(
            fontSize: 17,color: Colors.black87),),
          trailing: Text(price,style: TextStyle(fontSize:15,fontWeight: FontWeight.bold ),),
        ),
        Padding(padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: const [
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
              ],

            )
        ) ,],
    ),
  );

 }
