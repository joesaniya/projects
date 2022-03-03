import 'package:flutter/material.dart';
import 'package:hungry/Meals/categories.dart';
import 'package:hungry/Meals/favourites_screen.dart';
import 'package:hungry/Meals/meal.dart';
import 'package:hungry/models/helper/Meal.dart'as Meam;
import 'package:hungry/views/screens/bookmarks_page.dart';
import 'package:hungry/views/screens/explore_page.dart';
import 'package:hungry/views/screens/home_page.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/custom_bottom_navigation_bar.dart';

class PageSwitcher extends StatefulWidget {
  List<Meal> favouriteMeals;

  // final List<Meal> favouriteMeals;

  // PageSwitcher(this.favouriteMeals);
  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          [
            HomePage(),
            Categories(),
            // FavouritesScreen(widget.favouriteMeals)
            // CategoryItem(),
            // ExplorePage(),
            BookmarksPage(),
          ][_selectedIndex],
          BottomGradientWidget(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
    );
  }
}

class BottomGradientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(gradient: AppColor.bottomShadow),
      ),
    );
  }
}
