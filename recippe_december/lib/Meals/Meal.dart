import 'package:flutter/foundation.dart';



enum Complexity
{
  Simple,
  Challenging,
  Hard
}

enum Affordability
{
  Affordable,
  pricey,
  Luxurious, 
}

class Meal
{
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<Map<dynamic, dynamic>> Recipes;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutentFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final String calories;
  

 const Meal(
    {
      @required this.id,
      @required this.categories,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.duration,
      @required this.complexity,
      @required this.affordability,
      @required this.isGlutentFree,
      @required this.isLactoseFree,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.Recipes,
      @required this.calories,
    }
  );
}


class Recipe1
{
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutentFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  

 const Recipe1(
    {
      @required this.id,
      @required this.categories,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.duration,
      @required this.complexity,
      @required this.affordability,
      @required this.isGlutentFree,
      @required this.isLactoseFree,
      @required this.isVegan,
      @required this.isVegetarian,
    }
  );
}