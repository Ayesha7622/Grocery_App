import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';
import 'package:newgroceryapp/view/home_views/home_screens/product_details_view.dart';

class ChatsModel {
  Color? colr;
  String? name;
  String? images;
  String? icons;
  String? price;
  String? weight;

  ChatsModel(
      {required this.colr,
      required this.name,
      required this.images,
      //required this.icons,
      required this.price,
      required this.weight});
}

class HomeScreenClass extends StatelessWidget {
  HomeScreenClass({super.key});
  List<ChatsModel> grocery = [
    ChatsModel(
        colr: AppColors.peach,
        //icons: AppIcons.group,
        name: 'reshPeach',
        images: AppImages.peachImage, //'assets/appImages/peach-24 1.png',
        price: '${8.00}',
        weight: 'dozen'),
    ChatsModel(
        colr: AppColors.avacoda,
        //icons: AppIcons.group1,
        name: 'Avacoda',
        images: AppImages.avacodaImage,
        price: '${7.00}',
        weight: '2.0 lbs'),
    ChatsModel(
        colr: AppColors.pineapple,
        //icons: AppIcons.beverage,
        name: 'Pineapple',
        images: AppImages.pineImage,
        price: '${9.90}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.grapes,
        //icons: AppIcons.group2,
        name: 'Black Grapes',
        images: AppImages.grapesImage,
        price: '${7.05}',
        weight: '1.5 lbs'),
    ChatsModel(
        colr: AppColors.anar,
        //icons: AppIcons.group3,
        name: 'Pomegranate',
        images: AppImages.pomeImage,
        price: '${2.09}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.roccoli,
        //icons: AppIcons.vacuum,
        name: 'Fresh B roccoli',
        images: AppImages.roccoliImage,
        price: '${3.00}',
        weight: '1 kg'),

    //   'Fresh Peach',
    //   'Avacoda',
    //   'Pineapple',
    //   'Black Grapes',
    //   'Pomegranate',
    //   'Fresh B roccoli',
    // ];
    // List<String> images = [
    //   'assets/images/peach-24 1.png',
    //   'assets.images/aocado-2 1.png',
    //   'assets/images/pineapple-pieces.png',
    //   'assets/images/grapes-31.png',
    //   'assets/images/pomegranate-11.png',
    //   'assets/images/green-fresh-broccoli.png'
    // ];
    // List<String> price = [
    //   '${8.00}',
    //   '${7.00}',
    //   '${9.90}',
    //   '${7.05}',
    //   '${2.09}',
    //   '${3.00}'
    // ];
    // List<String> weight = [
    //   'dozen',
    //   '2.0 lbs',
    //   '1.50 lbs',
    //   '5.0 lbs',
    //   '1.50 lbs',
    //   '1 kg'
    // ];
    // List<String> colr = [
    //   'assets/colors/',
    //   '2.0 lbs',
    //   '1.50 lbs',
    //   '5.0 lbs',
    //   '1.50 lbs',
    //   '1 kg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.yite1, AppColors.yite2, AppColors.yite3])),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 2600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.grey2,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: NormalText(
                      text: 'Search keywords',
                      textColor: AppColors.greyColor,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.tune,
                      color: AppColors.greyColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    AppImages.ellaImage,
                    fit: BoxFit.cover,
                  ),
                  Column(children: [
                    SizedBox(
                      height: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BoldText(
                        text: '20% off on your\n first purchase',
                        textalign: TextAlign.left,
                        textColor: AppColors.blackColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: AppColors.whiteColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: AppColors.whiteColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: AppColors.whiteColor,
                        ),
                      ],
                    ),
                  ])
                ],
              )),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BoldText(
                text: 'Categories',
                fontSize: 23,
              ),
            ),
            Spacer(),
            Icon(
              Icons.chevron_right,
              color: AppColors.greyColor,
              size: 35,
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.grey3,
                      backgroundImage: AssetImage(AppIcons.group),
                      //backgroundImage: AssetImage(grocery[index].icons.toString())
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NormalText(
                      text: 'Vegetables',
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.lightred,
                      backgroundImage: AssetImage(AppIcons.group1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NormalText(
                      text: 'Fruits',
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.cream,
                      backgroundImage: AssetImage(AppIcons.beverage),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NormalText(
                      text: 'Beverages',
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.lightpurple,
                      backgroundImage: AssetImage(AppIcons.group2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NormalText(
                      text: 'Grocery',
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.lightblue,
                      backgroundImage: AssetImage(AppIcons.group3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NormalText(
                      text: 'Edible oil',
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.lightpink,
                      backgroundImage: AssetImage(
                        AppIcons.vacuum,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NormalText(
                      text: 'Household',
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BoldText(
                text: 'Featured Products',
                fontSize: 23,
              ),
            ),
            Spacer(),
            Icon(
              Icons.chevron_right,
              color: AppColors.greyColor,
              size: 35,
            )
          ],
        ),
        SizedBox(
          height: 500,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
              itemCount: grocery.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailsView(
                                image: grocery[index].images.toString(),
                                name: grocery[index].name.toString(),
                                price: grocery[index].price.toString())));
                  },
                  child: Container(
                    height: 254,
                    width: 181,
                    color: AppColors.whiteColor,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.favorite,
                                color: AppColors.redColor,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: grocery[index].colr,
                          backgroundImage: AssetImage(
                            grocery[index].images.toString(),
                          ),
                        ),
                        NormalText(
                          text: grocery[index].price.toString(),
                          textColor: AppColors.green,
                          fontSize: 15,
                        ),
                        BoldText(
                          text: grocery[index].name.toString(),
                          fontSize: 18,
                        ),
                        NormalText(
                          text: grocery[index].weight.toString(),
                          textColor: AppColors.greyColor,
                          fontSize: 13,
                        ),
                        Divider(),
                        NormalText(
                          text: 'Add to cart',
                          fontSize: 12,
                          textColor: AppColors.blackColor,
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     height: 80,
        //     width: 2600,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: AppColors.grey2,
        //     ),
        //     child: Row(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Icon(
        //             Icons.search,
        //             color: AppColors.greyColor,
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(10.0),
        //           child: NormalText(
        //             text: 'Search keywords',
        //             textColor: AppColors.greyColor,
        //             fontSize: 20,
        //           ),
        //         ),
        //         Spacer(),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Icon(
        //             Icons.tune,
        //             color: AppColors.greyColor,
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: Container(
        //       height: 300,
        //       width: double.infinity,
        //       child: Stack(
        //         children: [
        //           Image.asset(
        //             AppImages.ellaImage,
        //             fit: BoxFit.cover,
        //           ),
        //           Column(children: [
        //             SizedBox(
        //               height: 120,
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: BoldText(
        //                 text: '20% off on your\n first purchase',
        //                 textalign: TextAlign.left,
        //                 textColor: AppColors.blackColor,
        //                 fontSize: 20,
        //               ),
        //             ),
        //             SizedBox(
        //               height: 30,
        //             ),
        //             Row(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Container(
        //                     height: 30,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                         color: AppColors.green,
        //                         borderRadius: BorderRadius.circular(25)),
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   width: 10,
        //                 ),
        //                 CircleAvatar(
        //                   radius: 10,
        //                   backgroundColor: AppColors.whiteColor,
        //                 ),
        //                 SizedBox(
        //                   width: 10,
        //                 ),
        //                 CircleAvatar(
        //                   radius: 10,
        //                   backgroundColor: AppColors.whiteColor,
        //                 ),
        //                 SizedBox(
        //                   width: 10,
        //                 ),
        //                 CircleAvatar(
        //                   radius: 10,
        //                   backgroundColor: AppColors.whiteColor,
        //                 ),
        //               ],
        //             ),
        //           ])
        //         ],
        //       )),
        // ),
        // Row(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: BoldText(
        //         text: 'Categories',
        //         fontSize: 23,
        //       ),
        //     ),
        //     Spacer(),
        //     Icon(
        //       Icons.chevron_right,
        //       color: AppColors.greyColor,
        //       size: 35,
        //     )
        //   ],
        // ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundColor: AppColors.grey3,
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             NormalText(
        //               text: 'Vegetables',
        //               fontSize: 17,
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundColor: AppColors.lightred,
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             NormalText(
        //               text: 'Fruits',
        //               fontSize: 17,
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundColor: AppColors.cream,
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             NormalText(
        //               text: 'Beverages',
        //               fontSize: 17,
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundColor: AppColors.lightpurple,
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             NormalText(
        //               text: 'Grocery',
        //               fontSize: 17,
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundColor: AppColors.lightblue,
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             NormalText(
        //               text: 'Edible oil',
        //               fontSize: 17,
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundColor: AppColors.lightpink,
        //             ),
        //             SizedBox(
        //               height: 10,
        //             ),
        //             NormalText(
        //               text: 'Household',
        //               fontSize: 17,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: 15,
        // ),
        // Row(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: BoldText(
        //         text: 'Featured Products',
        //         fontSize: 23,
        //       ),
        //     ),
        //     Spacer(),
        //     Icon(
        //       Icons.chevron_right,
        //       color: AppColors.greyColor,
        //       size: 35,
        //     )
        //   ],
        // ),
        // Column(
        //   children: [
        //     Row(
        //       children: [
        //         Container(
        //           width: 181,
        //           height: 234,
        //           decoration: BoxDecoration(color: AppColors.white2Color),
        //         )
        //       ],
        //     )
        //   ],
        // )
      ]),
    ));
  }
}
