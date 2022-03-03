import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hungry/Meals/category_demo/curry_category.dart';
import 'package:hungry/Meals/category_meals_screen.dart';
import 'package:hungry/Meals/dummy_data.dart';
import 'package:hungry/Meals/filters_screen.dart';
import 'package:hungry/Meals/meal.dart';
import 'package:hungry/Meals/meal_detail_screen.dart';
import 'package:hungry/views/screens/auth/welcome_page.dart';
import 'package:hungry/views/screens/page_switcher.dart';
import 'Meals/Meal.dart' as Meam;
import 'Meals/meal_item.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',
        scaffoldBackgroundColor: Colors.white,
      ),
      //   initialRoute: '/',
      // routes: {
      //   '/':(ctx) => PageSwitcher(_favouriteMeals),
      //   CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen(_availableMeals),
      //   MealDetailScreen.routeName:(ctx) => MealDetailScreen(_toggleFavorite,_isMealFavorite),
      //   FiltersScreen.routeName:(ctx) => FiltersScreen(_filters,_setFilters),
      // },
      home: WelcomePage(),
      routes: {
        CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName:(ctx) => MealDetailScreen(_toggleFavorite,_isMealFavorite),
        FiltersScreen.routeName:(ctx) => FiltersScreen(_filters,_setFilters),
        // Currycategories.routeName:(ctx) => Currycategories(),
      },
    );
  }
}
