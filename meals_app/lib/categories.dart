import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';




class Categories extends StatefulWidget {

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,),
          ),
        child: GridView(
          padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent
        (
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((catData) =>CategoryItem(
          catData.id,
          catData.title,
          catData.color,
        )).toList(),
    ),
    );
  }
}