import 'package:flutter/material.dart';
import 'package:grocery/controller/component/Bold_text_widget.dart';
import 'package:grocery/controller/component/Green_button_widget.dart';
import 'package:grocery/controller/component/Normal_text_widget.dart';
import 'package:grocery/controller/utils/constants/app_assets/app_images/app_images.dart';

class SplashScreen2Class extends StatelessWidget {
  const SplashScreen2Class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.markusSpisk2Image))),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            BoldText(text: 'Buy Quality\nDiary Products'),
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
