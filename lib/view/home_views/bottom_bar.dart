import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';
import 'package:newgroceryapp/view/home_views/home_screens/home_view.dart';

class BottomBarClass extends StatefulWidget {
  const BottomBarClass({super.key});

  @override
  State<BottomBarClass> createState() => _BottomBarClassState();
}

class _BottomBarClassState extends State<BottomBarClass> {
  int currentindex = 0;
  onChange(index) {
    currentindex = index;
    setState(() {});
  }

  List pages = [
    HomeScreenClass(),
    HomeScreenClass(),
    HomeScreenClass(),
    HomeScreenClass(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentindex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          currentindex = index;
          setState(() {});
        },
        unselectedItemColor: AppColors.greyColor,
        selectedItemColor: AppColors.blackColor, //onChange

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: ''),
        ],
      ),
    );
  }
}
