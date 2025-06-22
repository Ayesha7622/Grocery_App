import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class OrderClass extends StatelessWidget {
  final String title;
  final String description;
  final String items;
  final String price;
  const OrderClass(
      {super.key,
      required this.title,
      required this.description,
      required this.items,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.whiteColor),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.lightgreen,
            child: Image(
              image: AssetImage(AppImages.box),
              color: AppColors.green,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText(
                text: title,
                textColor: AppColors.blackColor,
                fontSize: 20,
              ),
              NormalText(
                text: description,
                textColor: AppColors.greyColor,
                fontSize: 15,
              ),
              Row(
                children: [
                  NormalText(
                    text: items,
                    textColor: AppColors.blackColor,
                    fontSize: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NormalText(
                    text: price,
                    fontSize: 10,
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
