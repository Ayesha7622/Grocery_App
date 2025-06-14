import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class HomeScreenClass extends StatefulWidget {
  const HomeScreenClass({super.key});

  @override
  State<HomeScreenClass> createState() => _HomeScreenClassState();
}

class _HomeScreenClassState extends State<HomeScreenClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.greyColor,
        ),
        child: Row(
          children: [
            Icon(Icons.search),
            Text('Search keywords'),
            Spacer(),
            Icon(Icons.tune)
          ],
        ),
      ),
    );
  }
}
