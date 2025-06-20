import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class ContactClass extends StatelessWidget {
  const ContactClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Column(
        //   children: [
        //     Container(
        //       height: 220,
        //       width: double.infinity,
        //       decoration: BoxDecoration(color: AppColors.whiteColor),
        //       child: Column(
        //         children: [
        //           SizedBox(
        //             height: 100,
        //           ),
        //           CircleAvatar(
        //             radius: 80,
        //             backgroundImage: AssetImage(AppImages.girl),
        //           ),
        //           BoldText(
        //             text: 'Olivia Austin',
        //             textColor: AppColors.blackColor,
        //             fontSize: 25,
        //           ),
        //           NormalText(
        //             text: 'oliviaaustin@gmail.com',
        //             textColor: AppColors.greyColor,
        //             fontSize: 23

        //             ,
        //             fontWeight: FontWeight.w400,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       height: double.infinity,
        //       width: double.infinity,
        //       decoration: BoxDecoration(color: AppColors.yite3),
        //     )
        //   ],
        // ),
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 20,
              child: Container(
                color: AppColors.whiteColor,
              ),
            ),
            Expanded(
              flex: 80,
              child: Container(color: AppColors.yite3),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                  radius: 50, backgroundImage: AssetImage(AppImages.girl)),
              BoldText(
                text: 'Olivia Austin',
                textColor: AppColors.blackColor,
                fontSize: 25,
              ),
              NormalText(
                  text: 'oliviaaustin@gmail.com',
                  textColor: AppColors.greyColor,
                  fontSize: 23),
            ])
          ],
        )
      ],
    ));
  }
}
