import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Green_button_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/component/white_button.dart';
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
                  ),
                  Spacer(),
                  BoldText(text: 'Welacome'),
                  NormalText(
                      text:
                          'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
                  WhiteButton(
                    text: 'Continue with google',
                    onTap: () {},
                  ),
                  GreenButton(
                    text: 'Create an account',
                    onTap: () {},
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
