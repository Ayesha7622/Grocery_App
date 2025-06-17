import 'package:flutter/material.dart';

class ReviewHomeClass extends StatelessWidget {
  const ReviewHomeClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back),
              Text(
                'Write Reviews',
              )
            ],
          )
        ],
      ),
    );
  }
}
