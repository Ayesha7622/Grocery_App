import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Green_button_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';

class Splash_Screen_Project extends StatelessWidget {
  const Splash_Screen_Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AppImages.markusSpiskImage))),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            BoldText(text: 'Get Discounts\nOn All Products'),
            SizedBox(
              height: 10,
            ),
            NormalText(
                text:
                    'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
            Spacer(),
            GreenButton(text: 'Get Started', onTap: () {}),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
