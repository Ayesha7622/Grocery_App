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
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Stack(children: [
              // CircleAvatar(radius: 40,backgroundImage: Image(image: AssetImage(widget.image))),),
              CircleAvatar(
                radius: 200,
                backgroundColor: AppColors.lightpurple,
                child: Image(
                  image: AssetImage(
                    widget.image,
                  ),
                  height: 500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              )
            ]),
          ),
          Container(
            height: 438,
            width: 414,
            decoration: BoxDecoration(
                color: AppColors.yite3,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: BoldText(
                      text: widget.price,
                      textColor: AppColors.green,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: BoldText(
                      text: widget.name,
                      fontSize: 30,
                      textColor: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: NormalText(
                      text: widget.weight,
                      fontSize: 20,
                      textColor: AppColors.greyColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        NormalText(
                          text: '4.5',
                          textColor: AppColors.blackColor,
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
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
                          fontSize: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NormalText(
                      text:
                          'Organic Mountain works as a seller for many organic growers of organic lemons. Organic \nlemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered\n to be the worlds finest lemon for juicing',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.greyColor,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 58,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.lightpurple),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: NormalText(
                              text: 'Quantity',
                              fontSize: 18,
                              textColor: AppColors.greyColor,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: NormalText(
                              text: '-',
                              fontSize: 45,
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
                              fontSize: 30,
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
                              fontSize: 45,
                              textColor: AppColors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GreenButton(text: 'Add to cart', onTap: () {}),
                  ),
                ],
              ),
            ),
          ),
          // BoldText(
          //   text: widget.price,
          //   textColor: AppColors.green,
          //   fontSize: 20,
          // ),
          // BoldText(
          //   text: widget.name,
          //   textColor: AppColors.blackColor,
          // ),
          // NormalText(
          //   text: widget.weight,
          //   textColor: AppColors.greyColor,
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       NormalText(
          //         text: '4.5',
          //         textColor: AppColors.blackColor,
          //         fontSize: 17,
          //         fontWeight: FontWeight.w700,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: AppColors.yellow,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: AppColors.yellow,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: AppColors.yellow,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: AppColors.yellow,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: AppColors.yellow,
          //       ),
          //       NormalText(
          //         text: '(89 reviews)',
          //         textColor: AppColors.greyColor,
          //       )
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: NormalText(
          //     text:
          //         'Organic Mountain works as a seller for many organic growers\n of organic lemons. Organic lemons are easy to spot in your\n produce aisle. They are just like regular lemons, but they will\n usually have a few more scars on the outside of the lemon \nskin. Organic lemons are considered to be the worlds finest\n lemon for juicing',
          //     textColor: AppColors.greyColor,
          //     textAlign: TextAlign.left,
          //   ),
          // ),
          // Container(
          //   height: 60,
          //   width: 400,
          //   decoration: BoxDecoration(color: AppColors.yite3),
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: NormalText(
          //           text: 'Quantity',
          //           textColor: AppColors.greyColor,
          //         ),
          //       ),
          //       Spacer(),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: NormalText(
          //           text: '-',
          //           fontSize: 25,
          //           textColor: AppColors.green,
          //         ),
          //       ),
          //       SizedBox(
          //         width: 15,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: BoldText(
          //           text: '3',
          //           fontSize: 20,
          //           textColor: AppColors.blackColor,
          //         ),
          //       ),
          //       SizedBox(
          //         width: 15,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: NormalText(
          //           text: '+',
          //           fontSize: 25,
          //           textColor: AppColors.green,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: GreenButton(text: 'Add to cart', onTap: () {}),
          // ),
        ]),
      ),
    );
  }
}
