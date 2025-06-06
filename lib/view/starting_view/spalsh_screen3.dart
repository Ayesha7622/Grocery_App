import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Green_button_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class SpalshScreen3 extends StatelessWidget {
  const SpalshScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        AppImages.element5Image,
        fit: BoxFit.cover,
      ),
      Column(
        children: [
          SizedBox(
            height: 220,
          ),
          BoldText(text: 'Buy Premium\nQuality Fruits'),
          SizedBox(
            height: 10,
          ),
          NormalText(
              textColor: AppColors.blackColor,
              text:
                  'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
          Spacer(),
          GreenButton(text: 'Get Started', onTap: () {}),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ]));
  }
}
