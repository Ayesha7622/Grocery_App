import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

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

class FeaturedProduct extends StatelessWidget {
  FeaturedProduct({super.key});
  List<ChatsModel> grocery = [
    ChatsModel(
        colr: AppColors.peach,
        //icons: AppIcons.group,
        name: 'FreshPeach',
        images: AppImages.peachImage, //'assets/appImages/peach-24 1.png',
        price: '\$ ${8.00}',
        weight: 'dozen'),
    ChatsModel(
        colr: AppColors.avacoda,
        //icons: AppIcons.group1,
        name: 'Avacoda',
        images: AppImages.avacodaImage,
        price: '\$ ${7.00}',
        weight: '2.0 lbs'),
    ChatsModel(
        colr: AppColors.pineapple,
        //icons: AppIcons.beverage,
        name: 'Pineapple',
        images: AppImages.pineImage,
        price: '\$ ${9.90}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.grapes,
        //icons: AppIcons.group2,
        name: 'Black Grapes',
        images: AppImages.grapesImage,
        price: '\$ ${7.05}',
        weight: '1.5 lbs'),
    ChatsModel(
        colr: AppColors.anar,
        //icons: AppIcons.group3,
        name: 'Pomegranate',
        images: AppImages.pomeImage,
        price: '\$ ${2.09}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.roccoli,
        //icons: AppIcons.vacuum,
        name: 'Fresh B roccoli',
        images: AppImages.roccoliImage,
        price: '\$ ${3.00}',
        weight: '1 kg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 414,
            height: 105,
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
                    text: 'Vegetables',
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
          SizedBox(
            height: 750,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.9),
                itemCount: grocery.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
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
                            textColor: AppColors.blackColor,
                            fontSize: 18,
                          ),
                          NormalText(
                            text: grocery[index].weight.toString(),
                            textColor: AppColors.greyColor,
                            fontSize: 13,
                          ),
                          Divider(),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: AppColors.green,
                              ),
                              NormalText(
                                text: 'Add to cart',
                                fontSize: 15,
                                textColor: AppColors.blackColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
