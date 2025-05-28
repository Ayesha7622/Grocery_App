import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [Text('Get Discounts'), Text('On All Products')],
      ),
    );
  }
}
