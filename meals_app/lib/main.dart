
import 'package:flutter/material.dart';
import 'package:meals_app/categories.dart';
import 'package:meals_app/category_meals_screen.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/filters_screen.dart';
import 'package:meals_app/meal_detail_screen.dart';
import 'package:meals_app/tabs_screen.dart';
import 'package:meals_app/meal.dart';
import 'package:meals_app/meal_item.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, dynamic> _filters={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian':false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favouriteMeals=[];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal){
        if (_filters['gluten'] && !meal.isGlutentFree) {
          return false;
        }
        if (_filters['lactose'] && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan'] && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian'] && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final existingIndex =
        _favouriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favouriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favouriteMeals.add(
          DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
        );
      });
    }
  }

  bool _isMealFavorite(String id) {
    return _favouriteMeals.any((meal) => meal.id == id);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme:ThemeData.light().textTheme.copyWith(
          bodyText1:TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyText2:TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          subtitle1:TextStyle(
            fontSize: 20,
            // color: Colors.grey,
            fontFamily:'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      // home: Categories(),
      initialRoute: '/',
      routes: {
        '/':(ctx) => TabsScreen(_favouriteMeals),
        CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName:(ctx) => MealDetailScreen(_toggleFavorite,_isMealFavorite),
        FiltersScreen.routeName:(ctx) => FiltersScreen(_filters,_setFilters),
      },
      // onGenerateRoute: (settings)
      // {
      //   print(settings.arguments);
      //   // if(settings.name=='/meal_detail')
      //   // {
      //   //   return ....;
      //   // }
      //   // else if(settings.name=='/somethong-else')
      //   // {
      //   //   return ....;
      //   // }
      //   // return MaterialPageRoute(builder: (ctx) => Categories(),);
      // },
      // onUnknownRoute: (settings)
      // {
      //   return MaterialPageRoute(builder: (ctx) => Categories(),);
      // }
    );
  }
}