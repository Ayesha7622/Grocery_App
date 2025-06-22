import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class Notifications extends StatefulWidget {
  final String title;
  final String description;

  const Notifications(
      {super.key, required this.title, required this.description});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.whiteColor),
        child: Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              BoldText(
                text: widget.title,
                textColor: AppColors.blackColor,
                fontSize: 15,
              ),
              SizedBox(
                height: 15,
              ),
              NormalText(
                text: widget.description,
                textAlign: TextAlign.left,
                textColor: AppColors.greyColor,
                fontSize: 10,
              ),
            ]),
            SizedBox(
              width: 88,
            ),
            Switch(
                activeColor: AppColors.green,
                value: isSwitch,
                onChanged: (value) {
                  isSwitch = value;
                  setState(() {});
                }),
          ],
        ));
  }
}
