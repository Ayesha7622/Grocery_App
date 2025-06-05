import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class BoldText extends StatelessWidget {
  final String text;
  final TextAlign textalign;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  // int a;
  // a=56;
  const BoldText({
    super.key,
    required this.text,
    this.textalign = TextAlign.center,
    this.fontWeight = FontWeight.w700,
    this.textColor = AppColors.greyColor,
    this.fontSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textalign,
        style: GoogleFonts.poppins(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: AppColors.blackColor));
  }
}
