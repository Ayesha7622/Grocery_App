import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_icons/app_icons.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';
import 'package:newgroceryapp/model/contact_model.dart';
import 'package:newgroceryapp/view/home_views/aboutScreen.dart';
import 'package:newgroceryapp/view/home_views/home_screens/favourite.dart';
import 'package:newgroceryapp/view/home_views/notification.dart';
import 'package:newgroceryapp/view/home_views/transactions.dart';

class ContactClass extends StatelessWidget {
  const ContactClass({super.key});
  // List<ContactsModel> contact = [
  //   ContactsModel(icons: AppIcons.user, name: 'About me'),
  //   ContactsModel(icons: AppIcons.order, name: 'My Orders'),
  // ChatsModel(icons: AppIcons.favourite, name: 'My Favourites'),
  // ChatsModel(icons: AppIcons.location, name: 'My Address'),
  // ChatsModel(icons: AppIcons.credit, name: 'Credit Cards'),
  // ChatsModel(icons: AppIcons.transaction, name: 'Transactions'),
  // ChatsModel(icons: AppIcons.bell, name: 'Notifications'),
  // ChatsModel(icons: AppIcons.signout, name: 'Sign out'),
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
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
        ]),
        Column(children: [
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppImages.girl),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: CircleAvatar(
                      backgroundColor: AppColors.green,
                      radius: 20,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BoldText(
            text: 'Olivia Austin',
            textColor: AppColors.blackColor,
            fontSize: 20,
          ),
          NormalText(
              text: 'oliviaaustin@gmail.com',
              textColor: AppColors.greyColor,
              fontSize: 15),
          ListTile(
            leading: ImageIcon(
              AssetImage(
                AppIcons.user,
              ),
              color: AppColors.green,
            ),
            title: BoldText(
              textalign: TextAlign.start,
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Class_AboutMe()));
            },
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
            onTap: () {},
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavouriteScreen()));
            },
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
            onTap: () {},
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
            onTap: () {},
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TensactionClass()));
            },
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationClass()));
            },
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
          )
        ]),
      ],
    ));
  }
}
