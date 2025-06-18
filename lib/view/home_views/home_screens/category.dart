import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class ChatsModel {
  final String? name;
  final String? images;
  final Color? color;

  ChatsModel({required this.name, required this.images, required this.color});
}

class CategoryClass extends StatelessWidget {
  CategoryClass({super.key});

  List<ChatsModel> grocery = [
    ChatsModel(
      color: AppColors.grey3,
      name: 'Vegetables',
      images: AppIcons.leaf, //'assets/appImages/peach-24 1.png',
    ),
    ChatsModel(
      color: AppColors.lightred,
      name: 'Fruits',
      images: AppIcons.apple,
    ),
    ChatsModel(
      color: AppColors.cream,
      name: 'Beverages',
      images: AppIcons.yellow,
    ),
    ChatsModel(
      color: AppColors.lightpurple,
      name: 'Grocery',
      images: AppIcons.purple,
    ),
    ChatsModel(
      color: AppColors.lightblue,
      name: 'Edible oil',
      images: AppIcons.blue,
    ),
    ChatsModel(
      color: AppColors.lightpink,
      name: 'Household',
      images: AppIcons.vacuum,
    ),
    ChatsModel(
      color: AppColors.lightblue,
      name: 'Babycare',
      images: AppIcons.vector,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        width: 414,
        height: 118,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.blackColor,
                size: 35,
              ),
            ),
            SizedBox(
              //height: 30,
              width: 90,
            ),
            Center(
              child: NormalText(
                text: 'Categories',
                fontSize: 21,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.tune,
                color: AppColors.blackColor,
                size: 30,
              ),
            )
          ],
        ),
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(
      //         Icons.arrow_back,
      //         color: AppColors.blackColor,
      //         size: 15,
      //       ),
      //     ),
      //     NormalText(
      //       text: 'Categories',
      //       fontSize: 18,
      //       textColor: AppColors.blackColor,
      //       fontWeight: FontWeight.w500,
      //     ),
      //     Icon(
      //       Icons.tune,
      //       color: AppColors.blackColor,
      //       size: 15,
      //     )
      //   ],
      // ),
      SizedBox(
          height: 500,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
              itemCount: grocery.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                      height: 120,
                      width: 120,
                      color: AppColors.whiteColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: grocery[i].color,
                              // backgroundImage: AssetImage(
                              //   grocery[i].images.toString(),
                              // ),
                              child: Image(
                                image: AssetImage(
                                  grocery[i].images.toString(),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            NormalText(
                              textColor: AppColors.greyColor,
                              text: grocery[i].name.toString(),
                              fontSize: 18,
                            ),
                          ],
                        ),
                      )),
                );
              }))
    ]));

    // return InkWell(
    //   onTap: () {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) => ProductDetailsView(
    //                 image: grocery[index].images.toString(),
    //                 name: grocery[index].name.toString(),
    //                 weight: grocery[index].weight.toString(),
    //                 price: grocery[index].price.toString())));
  }
  // child: Container(
  //   height: 120,
  //   width: 120,
  //   color: AppColors.whiteColor,
  //   child: Column(
  //     children: [
  //       CircleAvatar(
  //         radius: 40,
  //         backgroundColor: grocery[i].color,
  //         backgroundImage: AssetImage(
  //           grocery[i].images.toString(),
  //         ),
  //       ),
  //       NormalText
  //       (textColor: AppColors.greyColor,
  //         text: grocery[i].name.toString(),
  //         fontSize: 18,
  //       ),
  //     ],
  //   ),
  // ),
}
