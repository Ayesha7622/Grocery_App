import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Green_button_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/component/white_button.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class StackScreen3 extends StatefulWidget {
  const StackScreen3({super.key});

  @override
  State<StackScreen3> createState() => _StackScreen3State();
}

class _StackScreen3State extends State<StackScreen3> {
  bool isSecure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            AppImages.portraitImage,
            fit: BoxFit.cover,
          ),
        ),
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
                child: NormalText(
                  text: 'Welcome',
                  textColor: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ]),
            SizedBox(
              height: 430,
            ),
            Container(
                //  height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NormalText(
                        textAlign: TextAlign.start,
                        text: 'Sign into your account',
                        fontSize: 23,
                        textColor: AppColors.greyColor,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        style: TextStyle(color: AppColors.greyColor),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: AppColors.greyColor,
                            size: 28,
                          ),
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                              fontSize: 20, color: AppColors.greyColor),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: TextStyle(color: AppColors.greyColor),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.phone_outlined,
                            color: AppColors.greyColor,
                            size: 28,
                          ),
                          hintText: 'Phone number',
                          hintStyle: TextStyle(
                              fontSize: 20, color: AppColors.greyColor),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: TextStyle(color: AppColors.white2Color),
                        obscureText: isSecure, // flase--true
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                              color: AppColors.greyColor,
                              size: 28,
                            ),
                            hintText: 'Enter password',
                            hintStyle: TextStyle(
                                fontSize: 20, color: AppColors.greyColor),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  if (isSecure == true) {
                                    //  bool secure = false;
                                    isSecure = false;
                                  } else {
                                    isSecure = true;
                                  }
                                  setState(() {});
                                },
                                icon: Icon(
                                  isSecure == true
                                      ? Icons.remove_red_eye
                                      : Icons.visibility_off,
                                  color: AppColors.greyColor,
                                ))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GreenButton(
                        text: 'Sign up',
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NormalText(
                            text: 'Already have an account ?  ',
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          BoldText(
                            text: 'Login',
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
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
