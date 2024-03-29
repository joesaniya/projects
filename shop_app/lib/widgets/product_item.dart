import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;

  ProductItem(
    this.id,
    this.title,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network
      (
        imageUrl,
        fit: BoxFit.cover,
        width: 500,
        height: 550,
      ),
    );
  }
}