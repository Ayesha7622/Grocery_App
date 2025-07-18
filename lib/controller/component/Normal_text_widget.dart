import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class NormalText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  const NormalText(
      {super.key,
      required this.text,
      this.fontWeight = FontWeight.w500,
      this.textAlign = TextAlign.center,
      this.fontSize = 12,
      this.textColor = AppColors.greyColor});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: GoogleFonts.poppins(
            fontSize: fontSize, fontWeight: fontWeight, color: textColor));
  }
}
