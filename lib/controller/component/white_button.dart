import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const WhiteButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white2Color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppIcons.google,
                height: 30,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: AppColors.blackColor, fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}
