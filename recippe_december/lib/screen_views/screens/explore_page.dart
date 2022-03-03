import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/models/helper/Meal.dart';
import 'package:hungry/models/helper/recipe_helper.dart';
import 'package:hungry/views/screens/search_page.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/category_card.dart';
import 'package:hungry/views/widgets/popular_recipe_card.dart';
import 'package:hungry/views/widgets/recommendation_recipe_card.dart';

class ExplorePage extends StatelessWidget {
  final List<Recipe> popularRecipe = RecipeHelper.popularRecipe;
  final List<Recipe> sweetFoodRecommendationRecipe = RecipeHelper.sweetFoodRecommendationRecipe;
  //  final List<Meal> availableMeals;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        brightness: Brightness.dark,
        elevation: 0,
        centerTitle: false,
        title: Text('Explore Recipe', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Category
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: AppColor.primary,
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                CategoryCard(title: 'Healthy', image: AssetImage('assets/images/healthy.jpg')),
                CategoryCard(title: 'Drink', image: AssetImage('assets/images/drink.jpg')),
                CategoryCard(title: 'Seafood', image: AssetImage('assets/images/seafood.jpg')),
                CategoryCard(title: 'Desert', image: AssetImage('assets/images/desert.jpg')),
                CategoryCard(title: 'Spicy', image: AssetImage('assets/images/spicy.jpg')),
                CategoryCard(title: 'Meat', image: AssetImage('assets/images/meat.jpg')),
                CategoryCard(title: 'Cakes', image: AssetImage('assets/images/cakes.jpg')),
                CategoryCard(title: 'Snacks', image: AssetImage('assets/images/snacks.jpg')),
              ],
            ),
          ),
          // Section 2 - Popular Card
           Container(
                  height: 174,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: popularRecipe.length,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16);
                    },
                    itemBuilder: (context, index) {
                      return PopularRecipeCard(
                        data: popularRecipe[index],
                      );
                    },
                  ),
                ),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          //   child: PopularRecipeCard(
          //     data: popularRecipe[index],
          //   ),
          // ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Todays sweet food to make your day happy ......',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                // Content
                Container(
                  height: 174,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: sweetFoodRecommendationRecipe.length,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16);
                    },
                    itemBuilder: (context, index) {
                      return RecommendationRecipeCard(data: sweetFoodRecommendationRecipe[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
