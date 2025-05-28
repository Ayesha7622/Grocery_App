import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/controller/utils/constants/app_colors/app_colors.dart';

class BoldText extends StatelessWidget {
  final String text;
  const BoldText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: AppColors.blackColor));
  }
}
