import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/component/myorder_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class ContactsModel {
  String? boldText;
  String? normalText;
  String? items;
  String? number;
  String? price;
  String? no;
  String? text1;
  String? text2;
  String? text3;
  String? subText;
  String? subText2;
  String? date;
  String? date2;
  String? date3;
  String? date4;
  String? date5;
  String? date6;

  ContactsModel({
    required this.boldText,
    required this.normalText,
    required this.items,
    required this.number,
    required this.price,
    required this.no,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.subText,
    required this.subText2,
    required this.date,
    required this.date2,
    required this.date3,
    required this.date4,
    required this.date5,
  });
}

class MyOrder extends StatefulWidget {
  MyOrder({
    super.key,
  });

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  List<ContactsModel> details = [
    ContactsModel(
        boldText: 'Order #90897',
        normalText: 'Placed On October 19 2021',
        items: 'items',
        number: '10',
        price: 'items',
        no: '16.9',
        text1: 'Order placed',
        text2: 'Order confirmed',
        text3: 'Order shipped',
        subText: 'Out for delivery',
        subText2: 'pending',
        date: 'October 19 2021',
        date2: 'October 19 2021',
        date3: 'October 20 2021',
        date4: 'October 20 2021',
        date5: 'pending'),
  ];

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.blackColor,
            )),
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
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return ExpansionTile(
                title: Text(details[index].boldText.toString()),
                leading: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.lightgreen,
                  child: Image(
                    image: AssetImage(AppIcons.order),
                    color: AppColors.green,
                  ),
                ),
                trailing: isExpanded
                    ? Icon(Icons.arrow_circle_up)
                    : Icon(
                        Icons.arrow_circle_down,
                        color: AppColors.blueColor,
                      ),
                subtitle: Column(
                  children: [
                    BoldText(text: details[index].normalText.toString()),
                    Row(
                      children: [
                        Row(
                          children: [
                            NormalText(
                              text: details[index].items.toString(),
                              textColor: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            NormalText(
                              text: details[index].number.toString(),
                              textColor: AppColors.blackColor,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: [
                            NormalText(
                              text: details[index].price.toString(),
                              textColor: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            NormalText(
                              text: '\$${details[index].no.toString()}',
                              textColor: AppColors.blackColor,
                              fontWeight: FontWeight.w400,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.darkgreen,
                      ),
                      NormalText(
                        text: details[index].text1.toString(),
                        textColor: AppColors.blackColor,
                      ),
                      Spacer(),
                      NormalText(
                        text: details[index].date.toString(),
                        textColor: AppColors.greyColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.darkgreen,
                      ),
                      NormalText(
                        text: details[index].text2.toString(),
                        textColor: AppColors.blackColor,
                      ),
                      Spacer(),
                      NormalText(
                        text: details[index].date2.toString(),
                        textColor: AppColors.greyColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.darkgreen,
                      ),
                      NormalText(
                        text: details[index].text3.toString(),
                        textColor: AppColors.blackColor,
                      ),
                      Spacer(),
                      NormalText(
                        text: details[index].date3.toString(),
                        textColor: AppColors.greyColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.darkgreen,
                      ),
                      NormalText(
                        text: details[index].subText.toString(),
                        textColor: AppColors.greyColor,
                      ),
                      Spacer(),
                      NormalText(
                        text: details[index].date4.toString(),
                        textColor: AppColors.greyColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: AppColors.greyColor,
                      ),
                      NormalText(
                        text: details[index].subText2.toString(),
                        textColor: AppColors.greyColor,
                      ),
                      Spacer(),
                      NormalText(
                        text: details[index].date5.toString(),
                        textColor: AppColors.greyColor,
                      )
                    ],
                  ),
                ],
                onExpansionChanged: (expanded) {
                  isExpanded = expanded;
                  setState(() {});
                });
          }),
      //
    );
  }
}
