import 'package:flutter/material.dart';
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

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

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
                text: 'Favourites',
                fontSize: 21,
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
          height: 500,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 8, crossAxisSpacing: 8),
              itemCount: grocery.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 380,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: grocery[index].colr,
                          child: Image(
                              image:
                                  AssetImage(grocery[index].images.toString())),
                        )
                      ],
                    ),
                  ),
                );
              }))
    ]));
  }
}
