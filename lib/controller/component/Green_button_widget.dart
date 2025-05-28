import 'package:flutter/material.dart';
import 'package:grocery/controller/utils/constants/app_colors/app_colors.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.primarygreenColor,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            'Get Started',
          ),
        ),
      ),
    );
  }
}
