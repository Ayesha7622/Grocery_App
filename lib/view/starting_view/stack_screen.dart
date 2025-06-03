import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.beautifulImage,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    'Welcome',
                    style: GoogleFonts.poppins(color: AppColors.whiteColor),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
