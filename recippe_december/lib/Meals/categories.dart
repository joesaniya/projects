import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/models/core/recipe.dart' as Recipe;
import 'package:hungry/models/helper/recipe_helper.dart';
import 'package:hungry/views/screens/search_page.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/popular_recipe_card.dart';
import 'package:hungry/views/widgets/recommendation_recipe_card.dart';
import './dummy_data.dart';
import './category_item.dart';




class Categories extends StatefulWidget {

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

final List<Recipe.Recipe> popularRecipe = RecipeHelper.popularRecipe;
final List<Recipe.Recipe> sweetFoodRecommendationRecipe = RecipeHelper.sweetFoodRecommendationRecipe;  

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
        // actions: [
        //   IconButton(
        //     // onPressed: (){
        //     //   buildSearch();
        //     // },
        //     onPressed: () {
        //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
        //     },
        //     icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.white),
        //   ),
        // ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        // physics: BouncingScrollPhysics(),
        children: [
          Container(
          // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
           width: MediaQuery.of(context).size.width,
           height: 350,
              // height: 450,
              color: AppColor.primary,
            // decoration: new BoxDecoration(
            //     image: new DecorationImage(image: new AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,),
            //   ),
            child: GridView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(25),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent
            (
              maxCrossAxisExtent: 200,
              childAspectRatio: 3/2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: DUMMY_CATEGORIES.map((catData) =>CategoryItem(
              catData.id,
              catData.title,
              catData.color,
              catData.image,
            )).toList(),
        ),
        ),
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
        //     width: MediaQuery.of(context).size.width,
        //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        //     child: PopularRecipeCard(
        //       data: popularRecipe,
        //     ),
        //   ),
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

// Widget buildSearch()=> SearchWidget(
//   text: query,
//   hintText : 'search Recipe\'s',
//   onChanged : searchRecipe,
// );