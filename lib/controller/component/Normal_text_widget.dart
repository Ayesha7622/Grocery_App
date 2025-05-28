import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('Get Discounts'), Text('On All Product')],
    );
  }
}
