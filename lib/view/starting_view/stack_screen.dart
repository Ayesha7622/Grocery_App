import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Green_button_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/component/white_button.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            AppImages.beautifulImage,
            fit: BoxFit.cover,
          ),
        ),
        // SizedBox(
        //   height: 30,
        // ),
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Welcome',
                    style: GoogleFonts.poppins(color: AppColors.whiteColor),
                  ),
                ),
              ),
            ]),
            Spacer(),
            Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 160,
                    ),
                    (BoldText(text: 'Welcome')),
                    NormalText(
                        text:
                            'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: WhiteButton(
                        text: 'Continue with google',
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GreenButton(
                        text: 'Create an account',
                        onTap: () {},
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Center(
                                child: NormalText(
                                  text: 'Already have an account?',
                                ),
                              ),
                              Center(child: BoldText(text: 'Login')),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        )
      ],
    ));
  }
}
