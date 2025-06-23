import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class Class_AboutMe extends StatefulWidget {
  Class_AboutMe({super.key});

  @override
  State<Class_AboutMe> createState() => _Class_AboutMeState();
}

class _Class_AboutMeState extends State<Class_AboutMe> {
  bool isSecure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yite3,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.blackColor,
            )),
        title: NormalText(
          text: 'About me',
          textColor: AppColors.blackColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NormalText(
              text: 'Personal Details',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              textColor: AppColors.blackColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 420,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(AppIcons.user),
                      color: AppColors.greyColor,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: 'Russell Austin',
                        textColor: AppColors.greyColor,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 420,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: AppColors.greyColor,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: 'russell.partner@gmail.com',
                        textColor: AppColors.greyColor,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 420,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: AppColors.greyColor,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: '+1  202  555  0142 ',
                        textColor: AppColors.greyColor,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NormalText(
              text: 'Change Password',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              textColor: AppColors.blackColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 420,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock_outline,
                      color: AppColors.greyColor,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: 'Current Password',
                        textColor: AppColors.greyColor,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 420,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock_outline,
                      color: AppColors.greyColor,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: '. . . . . . . . .',
                        textColor: AppColors.greyColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    IconButton(
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
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 420,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock_outline,
                      color: AppColors.greyColor,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: 'Confirm Password ',
                        textColor: AppColors.greyColor,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
