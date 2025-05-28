import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/controller/utils/constants/app_colors/app_colors.dart';

class GreenButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const GreenButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.primarygreenColor,
              AppColors.secondarygreenColor
            ]),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
