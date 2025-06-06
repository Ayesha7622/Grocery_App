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
      body: Stack(
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(
                AppImages.element5Image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppImages.vectorImage,
                fit: BoxFit.cover,
              ),
            )
          ]),
        ],
      ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 5),
      //   child: Image.asset(
      //     AppImages.element5Image,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Image.asset(
      //     AppImages.vectorImage,
      //     fit: BoxFit.cover,
      //   ),
      // )

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         color: AppColors.whiteColor,
      //         borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(90), topRight: Radius.circular(90)),
      //       ),
      //       child: Column(
      //         children: [
      //           SizedBox(
      //             height: 150,
      //           ),
      //           BoldText(
      //             text: 'Buy Premium\nQuality Fruits',
      //             fontWeight: FontWeight.w700,
      //             fontSize: 30,
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           NormalText(
      //             textColor: AppColors.greyColor,
      //             text:
      //                 'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy',
      //             fontSize: 20,
      //           ),
      //           SizedBox(
      //             height: 30,
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: GreenButton(text: 'Get Started', onTap: () {}),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
