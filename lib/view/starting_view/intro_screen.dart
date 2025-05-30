// import 'package:flutter/material.dart';
// import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
// import 'package:newgroceryapp/view/starting_view/on_borading_widget.dart';

// class BoradingWidgetScreen extends StatelessWidget {
//   const BoradingWidgetScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: [
//           BoradingWidget(
//               image: AppImages.deliveryImage,
//               heading: ' Fast Delivery',
//               description:
//                   'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
//           BoradingWidget(
//               image: AppImages.deliveryImage,
//               heading: ' Buy Grocery',
//               description:
//                   'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
//           BoradingWidget(
//               image: AppImages.deliveryImage,
//               heading: ' Enjoy Quality Food',
//               description:
//                   'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy')
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/view/starting_view/on_borading_widget.dart';

class BoradingWidgetScreen extends StatelessWidget {
  const BoradingWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          SizedBox(
            height: 30,
          ),
          BoardingWidget(
              image: AppImages.deliveryImage,
              heading: ' Fast Delivery',
              description:
                  'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
          BoardingWidget(
              image: AppImages.onlineImage,
              heading: ' Buy Grocery',
              description:
                  'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy'),
          BoardingWidget(
              image: AppImages.passionateImage,
              heading: ' Enjoy Quality Food',
              description:
                  'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy')
        ],
      ),
    );
  }
}
