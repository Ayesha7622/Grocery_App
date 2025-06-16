import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class ChatsModel {
  Color? colr;
  String? name;
  String? images;
  String? price;
  String? weight;

  ChatsModel(
      {required this.colr,
      required this.name,
      required this.images,
      required this.price,
      required this.weight});
}

class HomeScreenClass extends StatelessWidget {
  HomeScreenClass({super.key});
  List<ChatsModel> grocery = [
    ChatsModel(
        colr: AppColors.peach,
        name: 'reshPeach',
        images: 'assets/images/peach-24 1.png',
        price: '${8.00}',
        weight: 'dozen'),
    ChatsModel(
        colr: AppColors.avacoda,
        name: 'Avacoda',
        images: 'assets.images/aocado-2 1.png',
        price: '${7.00}',
        weight: '2.0 lbs'),
    ChatsModel(
        colr: AppColors.pineapple,
        name: 'Pineapple',
        images: 'assets/images/pineapple-pieces.png',
        price: '${9.90}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.grapes,
        name: 'Black Grapes',
        images: 'assets/images/grapes-31.png',
        price: '${7.05}',
        weight: '1.5 lbs'),
    ChatsModel(
        colr: AppColors.anar,
        name: 'Pomegranate',
        images: 'assets/images/pomegranate-11.png',
        price: '${2.09}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.roccoli,
        name: 'Fresh B roccoli',
        images: 'assets/images/green-fresh-broccoli.png',
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
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppColors.yite1,
                  AppColors.yite2,
                  AppColors.yite3
                ])),
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
              ListView.builder(
                  itemCount: grocery.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 234,
                      width: 181,
                      color: AppColors.whiteColor,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: grocery[index].colr,
                            backgroundImage: AssetImage(
                              grocery[index].images.toString(),
                            ),
                          ),
                          Text(grocery[index].price.toString()),
                          Text(grocery[index].name.toString()),
                          Text(grocery[index].weight.toString()),
                        ],
                      ),
                    );
                  })

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
            ])));
  }
}
