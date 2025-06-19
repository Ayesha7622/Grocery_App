import 'package:flutter/foundation.dart';
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

class FavouriteScreen extends StatefulWidget {
  FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  int count = 0;

  List<ChatsModel> grocery = [
    ChatsModel(
        colr: AppColors.peach,
        //icons: AppIcons.group,
        name: 'FreshPeach',
        images: AppImages.peachImage, //'assets/appImages/peach-24 1.png',
        price: '\$ ${2.22 * 4}',
        weight: 'dozen'),
    ChatsModel(
        colr: AppColors.avacoda,
        //icons: AppIcons.group1,
        name: 'Avacoda',
        images: AppImages.avacodaImage,
        price: '\$ ${2.22 * 4}',
        weight: '2.0 lbs'),
    ChatsModel(
        colr: AppColors.pineapple,
        //icons: AppIcons.beverage,
        name: 'Pineapple',
        images: AppImages.pineImage,
        price: '\$ ${2.22 * 4}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.grapes,
        //icons: AppIcons.group2,
        name: 'Black Grapes',
        images: AppImages.grapesImage,
        price: '\$ ${2.22 * 4}',
        weight: '1.5 lbs'),
    ChatsModel(
        colr: AppColors.anar,
        //icons: AppIcons.group3,
        name: 'Pomegranate',
        images: AppImages.pomeImage,
        price: '\$ ${2.224}',
        weight: '1.50 lbs'),
    ChatsModel(
        colr: AppColors.roccoli,
        //icons: AppIcons.vacuum,
        name: 'Fresh B roccoli',
        images: AppImages.roccoliImage,
        price: '\$ ${2.22 * 4}',
        weight: '1 kg'),
  ];

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
              size: 25,
            ),
          ),
          title: NormalText(
            text: 'Favourite',
            fontSize: 21,
            textColor: AppColors.blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 3),
              itemCount: grocery.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(color: AppColors.yite3),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: grocery[index].colr,
                            child: Image(
                                image: AssetImage(
                                    grocery[index].images.toString())),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(
                              text: grocery[index].price.toString(),
                              textColor: AppColors.green,
                              fontSize: 15,
                            ),
                            BoldText(
                              text: grocery[index].name.toString(),
                              textColor: AppColors.blackColor,
                              fontSize: 20,
                            ),
                            NormalText(
                              text: grocery[index].weight.toString(),
                              textColor: AppColors.greyColor,
                              fontSize: 15,
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (count > 1) {
                                    count++;
                                    setState(() {});
                                  }
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: AppColors.greyColor,
                                )),
                            NormalText(
                              text: '5',
                              textColor: AppColors.green,
                              fontSize: 20,
                            ),
                            IconButton(
                                onPressed: () {
                                  if (count > 1) {
                                    count--;
                                    setState(() {});
                                  }
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: AppColors.greyColor,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
