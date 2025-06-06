import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3)),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: AppColors.greyColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.greyColor,
            size: 28,
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20, color: AppColors.greyColor),
        ),
      ),
    );
  }
}
