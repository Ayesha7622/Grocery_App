import 'package:flutter/material.dart';
import 'package:newgroceryapp/controller/component/Bold_text_widget.dart';
import 'package:newgroceryapp/controller/component/Green_button_widget.dart';
import 'package:newgroceryapp/controller/component/Normal_text_widget.dart';
import 'package:newgroceryapp/controller/utils/constants/app_assets/app_images/app_images.dart';
import 'package:newgroceryapp/controller/utils/constants/app_colors/app_colors.dart';

class ProductDetailsView extends StatefulWidget {
  final String image;
  final String price;
  final String name;
  final String weight;
  const ProductDetailsView(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.weight});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                widget.image,
              ),
            )),
          ),
          Icon(Icons.arrow_back),
        ]),
        Container(
          child: Column(
            children: [
              // SizedBox(
              //   height: 150,
              // ),
              BoldText(
                text: widget.price,
                textColor: AppColors.green,
              ),
              BoldText(
                text: widget.name,
                textColor: AppColors.blackColor,
              ),
              NormalText(
                text: widget.name,
                textColor: AppColors.greyColor,
              ),
              Row(
                children: [
                  NormalText(
                    text: '4.5',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  ),
                  NormalText(
                    text: '(89 reviews)',
                    textColor: AppColors.greyColor,
                  )
                ],
              ),
              NormalText(
                text:
                    'Organic Mountain works as a seller for many organic growers\n of organic lemons. Organic lemons are easy to spot in your\n produce aisle. They are just like regular lemons, but they will\n usually have a few more scars on the outside of the lemon \nskin. Organic lemons are considered to be the worlds finest\n lemon for juicing',
                textColor: AppColors.greyColor,
                textAlign: TextAlign.left,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(color: AppColors.yite3),
                child: Row(
                  children: [
                    NormalText(
                      text: 'Quantity',
                      textColor: AppColors.greyColor,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: '-',
                        fontSize: 25,
                        textColor: AppColors.green,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BoldText(
                        text: '3',
                        fontSize: 20,
                        textColor: AppColors.blackColor,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NormalText(
                        text: '+',
                        fontSize: 25,
                        textColor: AppColors.green,
                      ),
                    ),
                    GreenButton(text: 'Add to cart', onTap: () {}),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
