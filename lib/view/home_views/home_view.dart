import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class HomeScreenClass extends StatelessWidget {
  const HomeScreenClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.grey2,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: AppColors.greyColor,
                ),
                NormalText(
                  text: 'Search keywords',
                  textColor: AppColors.greyColor,
                ),
                Spacer(),
                Icon(
                  Icons.tune,
                  color: AppColors.greyColor,
                )
              ],
            ),
          ),
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [Image.asset(AppImages.ellaImage)],
              ))
        ],
      ),
    );
  }
}
