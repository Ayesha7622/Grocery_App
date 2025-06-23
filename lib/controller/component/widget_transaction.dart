import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class WidgetTrans extends StatelessWidget {
  final String title;
  final String description;
  final String images;
  final String price;
  const WidgetTrans(
      {super.key,
      required this.title,
      required this.description,
      required this.images,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.whiteColor),
        child: Row(children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.lightpurple,
            child: Image(image: AssetImage(images)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              BoldText(
                text: title,
                textColor: AppColors.blackColor,
                fontSize: 15,
              ),
              SizedBox(
                height: 2,
              ),
              NormalText(
                text: description,
                textAlign: TextAlign.left,
                textColor: AppColors.greyColor,
                fontSize: 10,
              ),
            ]),
          ),
          SizedBox(
            width: 155,
          ),
          Column(
            children: [
              NormalText(
                text: '\$${price}',
                textColor: AppColors.darkgreen,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              )
            ],
          )
        ]));
  }
}
