import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_item.dart';
import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {

  final List<Product> loadedProducts=[
    Product(
      id: 'p1',
      title: 'Snacks',
      description: 'Portion of food often smaller than a regular meal',
      price: 29.99,
      imageUrl:
          'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2020%2F09%2F08%2Feditors-favorite-snacks-around-the-world-FT-MAG0920.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Soap',
      description: 'Soaps are surfactants usually used for washing, bathing, and other types of housekeeping.',
      price: 59.00,
      imageUrl:
          'http://cdn2.walkthroughindia.com/wp-content/uploads/2019/04/dove_soap.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Kitchen Gadgets',
      description: 'Preparation of a single kind of dish.',
      price: 199.00,
      imageUrl:
          'https://www.gannett-cdn.com/presto/2019/10/31/USAT/61e4a85f-fa32-4390-85be-e7bfdbffcaed-Kitchen.png?width=660&height=372&fit=crop&format=pjpg&auto=webp',
    ),
    Product(
      id: 'p4',
      title: 'Beauty Products',
      description: 'Purpose of cleansing, beautifying or altering the appearance.',
      price: 99.00,
      imageUrl:
          'https://static.onecms.io/wp-content/uploads/sites/23/2018/05/25/expired-beauty-products-1.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => 
        ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}