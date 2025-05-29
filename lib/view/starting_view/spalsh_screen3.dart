import 'package:flutter/material.dart';
import 'package:grocery/controller/component/Bold_text_widget.dart';
import 'package:grocery/controller/component/Green_button_widget.dart';
import 'package:grocery/controller/component/Normal_text_widget.dart';
import 'package:grocery/controller/utils/constants/app_assets/app_images/app_images.dart';

class SpalshScreen3 extends StatelessWidget {
  const SpalshScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 50,
              child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(AppImages.element5Image))))),
          Expanded(
            flex: 50,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  BoldText(text: 'Buy Premium\nQuality Fruits'),
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
          ),
        ],
      ),
    );
  }
}
