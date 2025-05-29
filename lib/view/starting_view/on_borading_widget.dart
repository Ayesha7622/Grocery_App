import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';

class OnBoradingWidget extends StatelessWidget {
  const OnBoradingWidget({super.key});

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
