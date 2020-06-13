import 'package:flutter/material.dart';

class Category {
  final Color backgroundColor;
  final IconData icon;
  final String title;

  Category({this.backgroundColor, this.icon, this.title});
}

final propertyCategories = [
  Category(
    backgroundColor: Colors.pink,
    icon: Icons.local_hotel,
    title: "Apartment",
  ),
  Category(
    backgroundColor: Colors.blue,
    icon: Icons.landscape,
    title: "Land",
  ),
  Category(
    icon: Icons.local_convenience_store,
    backgroundColor: Colors.orange,
    title: "Commercial",
  ),
  Category(
    icon: Icons.local_shipping,
    backgroundColor: Colors.purple,
    title: "Vehicle",
  ),
  // Category(
  //   icon: Icons.local_cafe,
  //   backgroundColor: Colors.pinkAccent,
  //   title: "Hotel",
  // ),
  // Category(
  //   icon: Icons.local_cafe,
  //   backgroundColor: Colors.green,
  //   title: "Hotel",
  // ),
  // Category(
  //   icon: Icons.local_cafe,
  //   backgroundColor: Colors.cyanAccent,
  //   title: "Hotel",
  // )
];
