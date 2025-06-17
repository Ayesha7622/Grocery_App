import 'package:flutter/material.dart';

class BottomBarClass extends StatefulWidget {
  const BottomBarClass({super.key});

  @override
  State<BottomBarClass> createState() => _BottomBarClassState();
}

class _BottomBarClassState extends State<BottomBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.person_4_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined)),
        ],
      ),
    );
  }
}
