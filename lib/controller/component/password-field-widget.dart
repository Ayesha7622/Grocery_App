import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({super.key});

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool isSecure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
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
            hintStyle: TextStyle(fontSize: 20, color: AppColors.greyColor),
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
    );
  }
}
