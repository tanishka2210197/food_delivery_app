import 'package:flutter/material.dart';
class Home extends StatelessWidget {

  List foods=[
    "Pizza",
    "Burger",
    "Snacks",
    "Water",
  ];
  List foods2=[
    "Chowmein",
    "Cheese Burger",
    "Cheese Pizza",


  ];

  @override
  Widget build(BuildContext context) {
    return  Material(
      color:Colors.white,
      child:SingleChildScrollView(
        child:Column(
          children:[
            SizedBox(height:35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text("Deliver to",style: TextStyle(
                        fontSize: 18,
                        color:Colors.black54,
                      ),),
                      SizedBox(
                        height:5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color:Colors.red,
                          ),
                          Text(
                              "Ghaziabad,India",
                              style:TextStyle(
                                fontSize:20,
                                fontWeight:FontWeight.bold,
                              )
                          ),
                          Icon(Icons.arrow_drop_down,color:Colors.red,
                          )
                        ],

                      ),
                    ],
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/Profile');
                    },
                    child: CircleAvatar(
                      child:Image.asset("lib/images/GIRL.jpeg",fit:BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
            //Search Bar
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top:10,bottom:2,left:10,right:10),

                  height:45,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    color:Colors.grey,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:3,right:400),

                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.search,size:27,color:Colors.redAccent)),


                  ),
                ),

                Icon(Icons.sort,size:39,color:Colors.deepOrange)

              ],
            ),
            //banner
            Container(
              height: 180,
              width:MediaQuery.of(context).size.width,

              child:Image.asset("lib/images/banner.jpg") ,
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal:15,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,

                  ),),
                  TextButton(
                    onPressed: (){},
                    child:Text("See All",style:TextStyle(
                      color: Colors.orange,
                      fontSize: 17,
                    )) ,
                  ),


                ],
              ),),

            // list 1
            SizedBox(
                height:120,
                child:ListView .builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: foods.length,
                    itemBuilder:(context, index){
                      return Container(
                        width:100,
                        margin: EdgeInsets.only(left:15),
                        padding:EdgeInsets.symmetric(vertical:5),
                        decoration: BoxDecoration(
                          // color: bgColors[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                          children: [
                            Image.asset("lib/images/${foods[index]}.png",
                              height:80,
                              width: 80,),
                            Text(
                              foods[index],
                              style:  TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color:Colors.black54,
                              ),
                            ),

                          ],
                        ),


                      );
                    }
                )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal:15,vertical:5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,

                  ),),
                  TextButton(
                    onPressed: (){},
                    child:Text("See All",style:TextStyle(
                      color: Colors.orange,
                      fontSize: 17,
                    )) ,
                  ),


                ],
              ),),
            SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: foods2.length,

                  itemBuilder:(context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/Detail');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.4,
                        margin:EdgeInsets.only(left:15,top:5,bottom:5,right:5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color:Colors.black12,
                                blurRadius:4,
                                spreadRadius: 2),
                          ],
                        ),child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset('lib/images/${foods2[index]}.jpg',height: 120,
                              width:MediaQuery.of(context) .size.width/1.4,
                              fit: BoxFit.cover,),

                          ),

                          Padding(
                              padding: EdgeInsets.only(left:8),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        foods2[index],
                                        style: TextStyle(
                                            fontSize: 18
                                        ),

                                      ),
                                      SizedBox(
                                        height:5,
                                      ),
                                      Text(
                                        "Fast Food",
                                        style: TextStyle(
                                          fontSize:16,
                                          color:Colors.black45,
                                        ),

                                      ),
                                      Row(
                                          children:[
                                            Icon(Icons.star,
                                              color:Color(0xFFFF2F08),
                                              size:20,),
                                            SizedBox(
                                              width:2,
                                            ),
                                            Text("4.7",style:TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                            SizedBox(
                                              width:5,
                                            ),
                                            Text("999 Ratings",style:TextStyle(
                                              color:Colors.black45,
                                            ))
                                          ]


                                      )
                                    ],
                                  )
                                ],

                              )


                          )
                        ],
                      ),

                      ),
                    );
                  }
              ),),

          ],
        ),
      ),



    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:food_deleivery_app/profile.dart';
// import 'welcome.dart';
// // import  'package:flutter/painting.dart.';
// // import 'package:flutter/src/widgets/container.dart';
// import 'details.dart';
//
// class Homepage extends StatefulWidget {
//   const Homepage
//       ({Key? key}) : super(key: key);
//
//   _HomepageState createState() => _HomepageState(); }
//
// class _HomepageState extends State<Homepage> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dawat",style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
//         backgroundColor: Colors.teal,
//         toolbarHeight: 60,
//         leading: Icon(Icons.food_bank,size: 50.0,),
//         actions: [
//           Padding(padding: const EdgeInsets.all(9.0)),
//
//           Container(
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//
//                     shape:CircleBorder(),),
//             onPressed:(){
//               Navigator.push(context, MaterialPageRoute(
//                   builder: (context) => Cart() ) );
//             }, child: Icon(Icons.add_shopping_cart,color: Colors.black,))
//             // CircleAvatar(
//             //
//             // radius: 35,
//             //    backgroundImage:AssetImage("assets/Me.jpeg"),
//             // )
//             ),
//            ],
//       ),
// body:
//       Column(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     TextField(
//       decoration:InputDecoration(
//         hintText: "Search food here",
//         prefixIcon: Icon(Icons.search,color: Colors.black,),
//         fillColor: Color(0xFFC8E6C9),
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         )
//       ) ,
//     ),
//
//
//     // Container(
//     // height: 80,
//     // width: 80,
//     // decoration: BoxDecoration(
//     // image: const DecorationImage(image: AssetImage("assets/burger.jpg")
//     //
//     // ),
//     // borderRadius: BorderRadius.circular(10),
//     // color: Colors.green[100]
//     // ),
//     // ),
//     //     SizedBox(height: 15,),
//     //     Text("Choose your favourite now",style: TextStyle(fontSize: 20),),
//     //
//
//     SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//
//           categoriesContainer(image: "assets/pizza1.jpg",
//             name: "ALL",
//           ),
//           categoriesContainer(image: "assets/burger.jpg",
//             name: "Burger",
//           ),
//           categoriesContainer(image: "assets/dosa.jpg",
//             name: "Dosa",
//           ),
//           categoriesContainer(image: "assets/biryani.jpeg",
//             name: "Biryani",
//           ),
//           categoriesContainer(image: "assets/pastry.jpg",
//             name: "Pastries",
//           ),
//
//           ],
//       ),
//
//     ) ,
//  SizedBox(height: 20,),
//      SingleChildScrollView(
//        scrollDirection: Axis.vertical,
//     child:Container(
//
//     height: 510,
//     child: GridView.count(
//     shrinkWrap: false,
//     primary: false,
//     childAspectRatio: 0.8,
//     crossAxisSpacing: 20,
//     mainAxisSpacing: 20 ,
//     crossAxisCount: 2,
//     children:[
//
//     AllContainers(
//       OnTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>screens())),
// //      onTap: Navigator.push( context,
// //   MaterialPageRoute(builder: (context) => const screens()),
// // ),
//       image:"assets/pizza.jpg",
//
//     name: "Authentic Pizza",
//     price: "Rs 250",
//     ),
//     AllContainers(
//       OnTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>screens())),
//     image: "assets/burger.jpg",
//     name: "Cheese Burger",
//     price: "Rs 100",
//     ),
//     AllContainers(
//       OnTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>screens())),
//     image: "assets/chole_bathure.jpg",
//     name: "Chole Bathure",
//     price: "Rs 200",
//     ),
//     AllContainers(
//       OnTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>screens())),
//     image: "assets/coffee.jpeg",
//     name: "Cold Coffee",
//     price: "Rs 180",
//     ),AllContainers(
//         OnTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>screens())),
//         image: "assets/biryani.jpeg",
//         name: "Veg Biryani",
//         price: "Rs 300",
//       ),AllContainers(
//         OnTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>screens())),
//         image: "assets/noodles.jpg",
//         name: "Noddles",
//         price: "Rs 150",
//       ),
//
//     ]
//     ),
//     ) ) ]
//       ) );
//
//   }
//   categoriesContainer({required String image ,required String name}) {
//
//     return Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 20),
//             height:80,
//             width: 80,
//             decoration: BoxDecoration(
//
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.green[100]
//             ),
//
//
//               child: CircleAvatar(
//               child: Image.asset(image),
//             ),
//             ),
//           SizedBox(height: 15,),
//           Text(name,style: TextStyle(fontSize: 23),),
//         ] );}}
// AllContainers({ required String image,required String name,required String price,required OnTap}) {
//   return GestureDetector(
//     onTap: OnTap,
//     child: Container(
//
//       height: 250,
//       width: 220,
//       decoration: BoxDecoration(
//           color:Colors.green[100],
//           borderRadius: BorderRadius.circular(10)
//       ),
//       child:Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [  CircleAvatar(
//           radius: 70,
//           backgroundImage: AssetImage(image),
//
//         ),
//           ListTile(leading: Text(name,style: TextStyle(
//               fontSize: 17,color: Colors.black87),),
//             trailing: Text(price,style: TextStyle(fontSize:15,fontWeight: FontWeight.bold ),),
//           ),
//           Padding(padding: const EdgeInsets.only(left: 12),
//               child: Row(
//                 children: const [
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                 ],
//
//               )
//           ) ,]
//       ), ),
//   );
//
//
// }



// categoriesContainer({required String image ,required String name}) {
//
//     return Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 20),
//             height:80,
//             width: 80,
//             decoration: BoxDecoration(
//
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.green[100]
//             ),
//
//             child:GestureDetector(
//                 onTap: (){
//                   Navigator.push( context,
//                     MaterialPageRoute(builder: (context) => const screens()),
//                   );
//          }, child: CircleAvatar(
//                  child: Image.asset(image),
//                ),
//                  ), ),
//           SizedBox(height: 15,),
//           Text(name,style: TextStyle(fontSize: 23),),
//         ] );}
//  AllContainers({ required String image,required String name,required String price}) {
//   return Container(
//
//     height: 250,
//     width: 220,
//     decoration: BoxDecoration(
//         color:Colors.green[100],
//         borderRadius: BorderRadius.circular(10)
//     ),
//     child:Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//        children: [ Container(
//           child: InkWell(
//             onTap: screens(),
//               child:
//                Image.asset(image),
//
//       // children: [ CircleAvatar(
//       //     radius: 70,
//       //     backgroundImage: AssetImage(image),
//       //
//           ),
//         ),
//         ListTile(leading: Text(name,style: TextStyle(
//             fontSize: 17,color: Colors.black87),),
//           trailing: Text(price,style: TextStyle(fontSize:15,fontWeight: FontWeight.bold ),),
//         ),
//         Padding(padding: const EdgeInsets.only(left: 12),
//             child: Row(
//               children: const [
//                 Icon(Icons.star,color: Colors.yellow,),
//                 Icon(Icons.star,color: Colors.yellow,),
//                 Icon(Icons.star,color: Colors.yellow,),
//                 Icon(Icons.star,color: Colors.yellow,),
//                 Icon(Icons.star,color: Colors.yellow,),
//               ],
//
//             )
//         ) ,],
//     ), );
//
//
//  }
