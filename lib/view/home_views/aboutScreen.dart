import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class Class_AboutMe extends StatelessWidget {
  const Class_AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
        ),
        title: NormalText(
          text: 'About me',
          textColor: AppColors.blackColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
    );
  }
}
