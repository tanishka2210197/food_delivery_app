import 'package:flutter/material.dart';
import 'dart:ui';
void main() => runApp(FoodDeliveryApp());

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery App'),
      ),
      body: RestaurantList(),
    );
  }
}

class RestaurantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with a list of restaurants retrieved from an API or a database.
    List<Restaurant> restaurants = [
      Restaurant('Restaurant A', '123 Main St', 'assets/a.jpeg'),
      Restaurant('Restaurant B', '456 Elm St', 'assets/b.jpeg'),
      Restaurant('Restaurant C', '789 Oak St', 'assets/c.jpg'),
    ];

    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        return RestaurantCard(restaurant: restaurants[index]);
      },
    );
  }
}

class Restaurant {
  final String name;
  final String address;
  final String image;

  Restaurant(this.name, this.address, this.image);
}

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantCard({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            restaurant.image,
            fit: BoxFit.cover,
            height: 200.0,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  restaurant.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  restaurant.address,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// In this code:
// real-world food delivery app would require more features, such as user authentication, menus, and ordering functionality.