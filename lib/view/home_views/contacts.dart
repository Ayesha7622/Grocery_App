import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

// class ChatsModel {
//   String? name;
//   String? icons;

//   ChatsModel({required this.icons, required this.name});
// }

class ContactClass extends StatelessWidget {
  const ContactClass({super.key});
  // List<ChatsModel> contact = [
  //   ChatsModel(icons: AppIcons.user, name: 'About me'),
  //   ChatsModel(icons: AppIcons.order, name: 'My Orders'),
  //   ChatsModel(icons: AppIcons.favourite, name: 'My Favourites'),
  //   ChatsModel(icons: AppIcons.location, name: 'My Address'),
  //   ChatsModel(icons: AppIcons.credit, name: 'Credit Cards'),
  //   ChatsModel(icons: AppIcons.transaction, name: 'Transactions'),
  //   ChatsModel(icons: AppIcons.bell, name: 'Notifications'),
  //   ChatsModel(icons: AppIcons.signout, name: 'Sign out'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Column(
        //   children: [
        //     Container(
        //       height: 220,
        //       width: double.infinity,
        //       decoration: BoxDecoration(color: AppColors.whiteColor),
        //       child: Column(
        //         children: [
        //           SizedBox(
        //             height: 100,
        //           ),
        //           CircleAvatar(
        //             radius: 80,
        //             backgroundImage: AssetImage(AppImages.girl),
        //           ),
        //           BoldText(
        //             text: 'Olivia Austin',
        //             textColor: AppColors.blackColor,
        //             fontSize: 25,
        //           ),
        //           NormalText(
        //             text: 'oliviaaustin@gmail.com',
        //             textColor: AppColors.greyColor,
        //             fontSize: 23

        //             ,
        //             fontWeight: FontWeight.w400,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       height: double.infinity,
        //       width: double.infinity,
        //       decoration: BoxDecoration(color: AppColors.yite3),
        //     )
        //   ],
        // ),
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 20,
              child: Container(
                color: AppColors.whiteColor,
              ),
            ),
            Expanded(
              flex: 80,
              child: Container(color: AppColors.yite3),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AppImages.girl),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.green,
                      radius: 20,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              BoldText(
                text: 'Olivia Austin',
                textColor: AppColors.blackColor,
                fontSize: 25,
              ),
              NormalText(
                  text: 'oliviaaustin@gmail.com',
                  textColor: AppColors.greyColor,
                  fontSize: 23),
            ]),
            Column(
              children: [
                ListTile(
                  leading: ImageIcon(
                    AssetImage(
                      AppIcons.user,
                    ),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'About me',
                    textColor: AppColors.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                ListTile(
                  leading: ImageIcon(
                    AssetImage(
                      AppIcons.order,
                    ),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'My Orders',
                    fontSize: 20,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                ListTile(
                  leading: ImageIcon(
                    AssetImage(AppIcons.favourite),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'My Favourite',
                    fontSize: 20,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                ListTile(
                  leading: ImageIcon(
                    AssetImage(AppIcons.location),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'My Address',
                    fontSize: 20,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                ListTile(
                  leading: ImageIcon(
                    AssetImage(AppIcons.credit),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'Credit Cards',
                    fontSize: 20,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                ListTile(
                  leading: ImageIcon(
                    AssetImage(AppIcons.transaction),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'Transactions',
                    fontSize: 20,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                ListTile(
                  leading: ImageIcon(
                    AssetImage(AppIcons.bell),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'Notifications',
                    fontSize: 20,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                ListTile(
                  leading: ImageIcon(
                    AssetImage(AppIcons.signout),
                    color: AppColors.green,
                  ),
                  title: BoldText(
                    text: 'Sign out',
                    fontSize: 20,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: AppColors.greyColor,
                    size: 45,
                  ),
                ),
                // ListView.builder(
                //   itemCount: contact.length,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       leading: ImageIcon(
                //           AssetImage((contact[index].icons.toString()))),
                //       title: NormalText(
                //         text: contact[index].name.toString(),
                //         textColor: AppColors.blackColor,
                //       ),
                //       trailing: Icon(
                //         Icons.chevron_right,
                //         color: AppColors.green,
                //       ),
                //     );
                //   },
                // ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
