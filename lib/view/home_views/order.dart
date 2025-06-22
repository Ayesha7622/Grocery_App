import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/component/myorder_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
        ),
        title: NormalText(
          text: "My Order",
          textColor: AppColors.blackColor,
          fontWeight: FontWeight.w500,
          fontSize: 23,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.tune,
            color: AppColors.blackColor,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            OrderClass(
                title: 'Order #90897',
                description: 'Placed On October 19 2021',
                items: 'Items: 10',
                price: 'Items: ${16.90}'),
            Divider(),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.green,
                    ),
                    NormalText(
                      text: 'Order placed',
                      textColor: AppColors.blackColor,
                      fontSize: 12,
                    ),
                    Spacer(),
                    NormalText(
                      text: 'October 19 2021',
                      textColor: AppColors.greyColor,
                      fontSize: 12,
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.green,
                    ),
                    NormalText(
                      text: 'Order confirmed',
                      textColor: AppColors.blackColor,
                      fontSize: 12,
                    ),
                    Spacer(),
                    NormalText(
                      text: 'October 19 2021',
                      textColor: AppColors.greyColor,
                      fontSize: 12,
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.green,
                    ),
                    NormalText(
                      text: 'Order shipped',
                      textColor: AppColors.blackColor,
                      fontSize: 12,
                    ),
                    Spacer(),
                    NormalText(
                      text: 'October 20 2021',
                      textColor: AppColors.greyColor,
                      fontSize: 12,
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.green,
                    ),
                    NormalText(
                      text: 'Out for delivery',
                      textColor: AppColors.greyColor,
                      fontSize: 12,
                    ),
                    Spacer(),
                    NormalText(
                      text: 'October 20 2021',
                      textColor: AppColors.greyColor,
                      fontSize: 12,
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.greyColor,
                    ),
                    NormalText(
                      text: 'pending',
                      textColor: AppColors.greyColor,
                      fontSize: 12,
                    ),
                    Spacer(),
                    NormalText(
                      text: 'pending',
                      textColor: AppColors.greyColor,
                      fontSize: 12,
                    )
                  ],
                ),
              ],
            ),
            OrderClass(
                title: 'Order #90897',
                description: 'Placed On October 19 2021',
                items: 'Items: 10',
                price: 'Items: ${16.90}'),
            OrderClass(
                title: 'Order #90897',
                description: 'Placed On October 19 2021',
                items: 'Items: 10',
                price: 'Items: ${16.90}'),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: AppColors.greyColor,
                ),
                NormalText(
                  text: 'Order Delivered',
                  textColor: AppColors.greyColor,
                  fontSize: 12,
                ),
                Spacer(),
                NormalText(
                  text: 'Aug 29 2021',
                  fontSize: 12,
                  textColor: AppColors.greyColor,
                )
              ],
            ),
            OrderClass(
                title: 'Order #90897',
                description: 'Placed On October 19 2021',
                items: 'Items: 10',
                price: 'Items: ${16.90}'),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: AppColors.greyColor,
                ),
                NormalText(
                  text: 'Order Delivered',
                  textColor: AppColors.greyColor,
                  fontSize: 12,
                ),
                Spacer(),
                NormalText(
                  text: 'Aug 29 2021',
                  fontSize: 12,
                  textColor: AppColors.greyColor,
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
