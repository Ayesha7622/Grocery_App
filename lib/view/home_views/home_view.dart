import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 2600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.grey2,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: NormalText(
                      text: 'Search keywords',
                      textColor: AppColors.greyColor,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.tune,
                      color: AppColors.greyColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                height: 400,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                      AppImages.ellaImage,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: BoldText(
                            text: '20% off on \nyour first purchase',
                            textColor: AppColors.blackColor,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(25)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
