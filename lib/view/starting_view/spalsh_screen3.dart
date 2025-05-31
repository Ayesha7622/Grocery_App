import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Green_button_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';

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
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/appImages/markus-spiske2.png'))))),
          Expanded(
            flex: 50,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
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
