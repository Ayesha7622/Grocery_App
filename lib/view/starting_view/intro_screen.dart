import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';

class BoardingScreen extends StatelessWidget {
  final String image;
  final String heading;
  final String description;
  const BoardingScreen(
      {super.key,
      required this.image,
      required this.heading,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            children: [
              Image(image: AssetImage(image)),
              Spacer(),
              BoldText(text: heading, ontap: () {}),
              NormalText(text: description),
              SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
