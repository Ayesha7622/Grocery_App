import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class NormalText2 extends StatelessWidget {
  final String text;
  const NormalText2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.start,
        style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: AppColors.greyColor));
  }
}
