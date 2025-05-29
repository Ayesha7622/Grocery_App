import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';

class OnBoradingWidget extends StatelessWidget {
  final String image;
  final String heading;
  final String description;
  const OnBoradingWidget(
      {super.key,
      required this.image,
      required this.heading,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnBoradingWidget(
              image: AppImages.deliveryImage,
              heading: ' Fast Delivery',
              description:
                  'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
          OnBoradingWidget(
              image: AppImages.deliveryImage,
              heading: ' Buy Grocery',
              description:
                  'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
          OnBoradingWidget(
              image: AppImages.deliveryImage,
              heading: ' Enjoy Quality Food',
              description:
                  'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy')
        ],
      ),
    );
  }
}
