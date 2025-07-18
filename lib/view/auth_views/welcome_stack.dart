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
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NormalText(
                  text: 'Welcome',
                  textColor: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
            Spacer(),
            Container(
                //  height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      BoldText(
                        text: 'Welcome',
                        textalign: TextAlign.start,
                        fontSize: 23,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      NormalText(
                          textAlign: TextAlign.start,
                          text:
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy'),
                      SizedBox(
                        height: 10,
                      ),
                      WhiteButton(
                        text: 'Continue with google',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GreenButton(
                        text: 'Create an account',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NormalText(
                            text: 'Already have an account?  ',
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          BoldText(
                            text: 'Login',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        )
      ],
    ));
  }
}
