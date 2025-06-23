import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/component/widget_transaction.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class TensactionClass extends StatelessWidget {
  const TensactionClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
        ),
        title: NormalText(
          text: 'Transactions',
          textColor: AppColors.blackColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          WidgetTrans(
            title: 'Master Card',
            description: 'Dec 12 2021 at 10:00 pm',
            images: AppImages.circle,
            price: '89',
          ),
          WidgetTrans(
            title: 'Master Card',
            description: 'Dec 12 2021 at 10:00 pm',
            images: AppImages.visa,
            price: '109',
          ),
          WidgetTrans(
            title: 'Paypal',
            description: 'Dec 12 2021 at 10:00 pm',
            images: AppImages.payl,
            price: '567',
          ),
          WidgetTrans(
            title: 'Paypal',
            description: 'Dec 12 2021 at 10:00 pm',
            images: AppImages.payl,
            price: '567',
          ),
          WidgetTrans(
            title: 'Master Card',
            description: 'Dec 12 2021 at 10:00 pm',
            images: AppImages.visa,
            price: '109',
          ),
          WidgetTrans(
            title: 'Master Card',
            description: 'Dec 12 2021 at 10:00 pm',
            images: AppImages.circle,
            price: '89',
          ),
        ],
      ),
    );
  }
}
