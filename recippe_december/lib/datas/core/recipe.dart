import 'package:flutter/material.dart';

class Recipe {
  
  String? title;
  String? photo;
  String? calories;
  String? time;
  String? description;

  List<Ingridient>? ingridients;
  List<TutorialStep>? tutorial;
  List<Review>? reviews;

  Recipe({this.title, this.photo, this.calories, this.time, this.description, this.ingridients, this.tutorial, this.reviews});

  factory Recipe.fromJson(Map<String, Object> json) {
    return Recipe(
      title: json['title'].toString(),
      photo: json['photo'].toString(),
      calories: json['calories'].toString(),
      time: json['time'].toString(),
      description: json['description'].toString(),
    );
  }

  static map(Recipe Function(dynamic data) param0) {}
}


class TutorialStep {
  String? step;
  String? description;
  TutorialStep({this.step, this.description});

  Map<String, Object> toMap() {
    return {
      'step': step.toString(),
      'description': description.toString(),
    };
  }

  factory TutorialStep.fromJson(Map<String, Object> json) => TutorialStep(
        step: json['step'].toString(),
        description: json['description'].toString(),
      );

  static List<TutorialStep> toList(List<Map<String, Object>> json) {
    return List.from(json).map((e) => TutorialStep(step: e['step'], description: e['description'])).toList();
  }
}

class Review {
  String? username;
  String? review;
  Review({this.username, this.review});

  factory Review.fromJson(Map<String, Object> json) => Review(
        review: json['review'].toString(),
        username: json['username'].toString(),
      );

  Map<String, Object> toMap() {
    return {
      'username': username.toString(),
      'review': review.toString(),
    };
  }

  static List<Review> toList(List<Map<String, Object>> json) {
    return List.from(json).map((e) => Review(username: e['username'], review: e['review'])).toList();
  }
}



class Ingridient {
  String? name;
  String? size;

  Ingridient({this.name, this.size});
  factory Ingridient.fromJson(Map<String, Object> json) => Ingridient(
        name: json['name'].toString(),
        size: json['size'].toString(),
      );

  Map<String, Object> toMap() {
    return {
      'name': name.toString(),
      'size': size.toString(),
    };
  }

  static List<Ingridient> toList(List<Map<String, Object>> json) {
    return List.from(json).map((e) => Ingridient(name: e['name'], size: e['size'])).toList();
  }
}

class CategoryItem
{
   final String id;
  final String title;
  final Color color;
  final String image;

  CategoryItem
  (
    this.id,
    this.title,
    this.color, 
    this.image
  );

//   void selectCategory(BuildContext ctx)
//   {
//     Navigator.of(ctx).pushNamed(
//       // '/category-meals',
//       CategoryMealsScreen.routeName,
//       arguments: {
//         'id':id,
//         'title':title,
//         }
//     );
// }
}