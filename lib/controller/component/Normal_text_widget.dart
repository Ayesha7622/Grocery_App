import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Text('Lorem ipsum dolor sit amet , consetetur'),
          Text('sadipscing elitr , sed diam nonumy')
        ],
      ),
    );
  }
}
