import 'package:flutter/material.dart';

class ProductDetailsView extends StatefulWidget {
  final String image;
  final String price;
  final String name;
  const ProductDetailsView(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.name),
      ),
    );
  }
}
