import 'package:flutter/material.dart';




class Category
{
  final String id;
  final String title;
  final String image;
  final Color color;

  const Category
  (
  {
    @required this.id,
    @required this.title, 
    @required this.image,
    this.color = Colors.orange,
  }
  );
}
    
class CategoryRecipe
{
  final String id;
  final String rid;
  final String title;
  final String image;
  final Color color;

  const CategoryRecipe
  (
  {
    @required this.id,
    @required this.rid,
    @required this.title, 
    @required this.image,
    this.color = Colors.orange,
  }
  );
}