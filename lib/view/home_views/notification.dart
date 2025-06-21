import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/component/myNotification.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class MyNotification extends StatelessWidget {
  const MyNotification({super.key});

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
            text: 'Notifications',
            textColor: AppColors.blackColor,
            fontSize: 20,
          ),
        ),
        body: Column(
          children: [
            Notifications(
                title: 'Allow Notifications',
                description:
                    'Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym'),
            Notifications(
                title: 'Email Notifications',
                description:
                    'Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym'),
            Notifications(
                title: 'Order Notifications',
                description:
                    'Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym'),
            Notifications(
                title: 'General Notifications',
                description:
                    'Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym'),
          ],
        )
        // body: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       margin: EdgeInsets.all(16),
        //       padding: EdgeInsets.all(10),
        //       // height: 103,
        //       width: double.infinity,
        //       decoration: BoxDecoration(color: AppColors.whiteColor),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [

        //               BoldText(
        //                 text: 'Allow Notifications',
        //                 textColor: AppColors.blackColor,
        //                 fontSize: 25,
        //               ),
        //               NormalText(
        //                 text:
        //                     'Lorem ipsum dolor sit amet, consetetur sadi\npscing elitr, sed diam nonumym',
        //                 textColor: AppColors.greyColor,
        //                 fontSize: 15,
        //               )
        //             ],
        //           ),
        //           Container(
        //             height: 10,
        //             width: 30,
        //             color: Colors.green,
        //           )
        //         ],
        //       ),
        //     ),
        //   ],
        // ),

        );
  }
}
