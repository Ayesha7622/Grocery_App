import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: onTap
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            // Icon(Icons.),
            Center(
                child: Text('data',
                    style: GoogleFonts.poppins(color: AppColors.blackColor))),
          ],
        ),
      ),
    );
  }
}
