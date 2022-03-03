// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:hungry/Meals/meal.dart';
// import 'package:hungry/Meals/meal_item.dart';
// import 'package:hungry/models/core/recipe.dart';
// import 'package:hungry/models/core/recipe.dart';
// import 'package:hungry/models/helper/recipe_helper.dart';
// import 'package:hungry/views/utils/AppColor.dart';
// import 'package:hungry/views/widgets/modals/search_filter_modal.dart';
// import 'package:hungry/views/widgets/recipe_tile.dart';
// import 'package:hungry/models/core/recipe.dart' as Recipe;

// class SearchPage extends StatefulWidget {
//   final List<Meal> availableMeals;

//   SearchPage
//   (
//     this.availableMeals
//   );

//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   TextEditingController searchInputController = TextEditingController();
//   final List<Recipe.Recipe> searchResult = RecipeHelper.sarchResultRecipe;
//   final List<Recipe.Recipe> featuredRecipe = RecipeHelper.featuredRecipe;
//   final List<Recipe.Recipe> recommendationRecipe = RecipeHelper.recommendationRecipe;
//   final List<Recipe.Recipe> newlyPostedRecipe = RecipeHelper.newlyPostedRecipe;
//   final Recipe.Recipe popularRecipe = RecipeHelper.popularRecipe;
//   final List<Recipe.Recipe> sweetFoodRecommendationRecipe = RecipeHelper.sweetFoodRecommendationRecipe; 

//   String categoryTitle;
//    List<Meal> displayedMeals;
//   var _loadedInitData = false;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     if (!_loadedInitData) {
//       final routeArgs =
//           ModalRoute.of(context).settings.arguments as Map<String, String>;
//       categoryTitle = routeArgs['title'];
//       final categoryId = routeArgs['id'];
//       displayedMeals = widget.availableMeals.where((meal) {
//         return meal.categories.contains(categoryId);
//       }).toList();
//       _loadedInitData = true;
//     }
//     super.didChangeDependencies();
//   }

//   void _removeMeal(String mealId) {
//     setState(() {
//       displayedMeals.removeWhere((meal) => meal.id == mealId);
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//     print(searchInputController.text.isEmpty);
//     return Scaffold(
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         backgroundColor: AppColor.primary,
//         elevation: 0,
//         centerTitle: true,
//         title: Text('Search Recipe', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.white),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         physics: BouncingScrollPhysics(),
//         children: [
//           // Section 1 - Search
//           Container(
//             width: MediaQuery.of(context).size.width,
//             // height: 145,
//             height: 100,
//             color: AppColor.primary,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Search Bar
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Search TextField
//                       Expanded(
//                         child: Container(
//                           height: 50,
//                           margin: EdgeInsets.only(right: 15),
//                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.primarySoft),
//                           child: TextField(
//                             controller: searchInputController,
//                             onChanged: (value) {
//                               print(searchInputController.text);
//                               setState(() {});
//                             },
//                             style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
//                             maxLines: 1,
//                             textInputAction: TextInputAction.search,
//                             decoration: InputDecoration(
//                               hintText: 'What do you want to eat?',
//                               hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
//                               prefixIconConstraints: BoxConstraints(maxHeight: 20),
//                               contentPadding: EdgeInsets.symmetric(horizontal: 17),
//                               focusedBorder: InputBorder.none,
//                               border: InputBorder.none,
//                               prefixIcon: Visibility(
//                                 visible: (searchInputController.text.isEmpty) ? true : false,
//                                 child: Container(
//                                   margin: EdgeInsets.only(left: 10, right: 12),
//                                   child: SvgPicture.asset(
//                                     'assets/icons/search.svg',
//                                     width: 20,
//                                     height: 20,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       // Filter Button
//                       GestureDetector(
//                         onTap: () {
//                           // showModalBottomSheet(
//                           //     context: context,
//                           //     backgroundColor: Colors.white,
//                           //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//                           //     builder: (context) {
//                           //       return SearchFilterModal();
//                           //     });
//                         },
//                         child: Container(
//                           width: 50,
//                           height: 50,
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: AppColor.secondary,
//                           ),
//                           child: SvgPicture.asset('assets/icons/filter.svg'),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 // Search Keyword Recommendation
//                 // Container(
//                 //   height: 60,
//                 //   margin: EdgeInsets.only(top: 8),
//                 //   child: ListView.separated(
//                 //     shrinkWrap: true,
//                 //     scrollDirection: Axis.horizontal,
//                 //     physics: BouncingScrollPhysics(),
//                 //     padding: EdgeInsets.symmetric(horizontal: 16),
//                 //     itemCount: popularRecipeKeyword.length,
//                 //     separatorBuilder: (context, index) {
//                 //       return SizedBox(width: 8);
//                 //     },
//                 //     itemBuilder: (context, index) {
//                 //       return Container(
//                 //         alignment: Alignment.topCenter,
//                 //         child: TextButton(
//                 //           onPressed: () {
//                 //             searchInputController.text = popularRecipeKeyword[index];
//                 //           },
//                 //           child: Text(
//                 //             popularRecipeKeyword[index],
//                 //             style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.w400),
//                 //           ),
//                 //           style: OutlinedButton.styleFrom(
//                 //             side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
//                 //           ),
//                 //         ),
//                 //       );
//                 //     },
//                 //   ),
//                 // )
//               ],
//             ),
//           ),
//           // Section 2 - Search Result
//           Container(
//             padding: EdgeInsets.all(16),
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(bottom: 15),
//                   child: Text(
//                     'This is the result of your search..',
//                     style: TextStyle(color: Colors.grey, fontSize: 12),
//                   ),
//                 ),
//                 ListView.separated(
//                   shrinkWrap: true,
//                   itemCount: searchResult.length,
//                   physics: NeverScrollableScrollPhysics(),
//                   separatorBuilder: (context, index) {
//                     return SizedBox(height: 16);
//                   },
//                   itemBuilder: (context, index) {
//                     return RecipeTile(
//                       data: searchResult[index],
//                     );
//                   },
//                 ),
//                 ListView.separated(
//                 shrinkWrap: true,
//                 itemCount: displayedMeals.length,
//                 physics: NeverScrollableScrollPhysics(),
//                 separatorBuilder: (context, index) {
//                   return SizedBox(height: 16);
//                 },
//                 itemBuilder: (context, index) {
//                 return MealItem(
//                 id: displayedMeals[index].id,
//                 title: displayedMeals[index].title,
//                 imageUrl: displayedMeals[index].imageUrl,
//                 duration: displayedMeals[index].duration,
//                 affordability: displayedMeals[index].affordability,
//                 complexity: displayedMeals[index].complexity,
//                 // removeItem: _removeMeal,
//               );
//                 },
//               ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/Meals/Meal.dart';
import 'package:hungry/Meals/meal_item.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/models/helper/recipe_helper.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/modals/search_filter_modal.dart';
import 'package:hungry/views/widgets/recipe_tile.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchInputController = TextEditingController();
  List<Recipe> searchResult = RecipeHelper.sarchResultRecipe;
  int dataLength;
   List<Meal> displayedMeals;

  @override
  Widget build(BuildContext context) {
    print(searchInputController.text.isEmpty);
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: AppColor.primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Search Recipe', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Search
          Container(
            width: MediaQuery.of(context).size.width,
            height: 145,
            color: AppColor.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Search TextField
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.primarySoft),
                          child: TextField(
                            controller: searchInputController,
                            onChanged: (value) {
                              print(searchInputController.text);
                              setState(() {
                                
                              });
                              // setState(() {
                              //   dataLength = Recipe.where((element)
                              //   => element.title.toLowercase().sta
                              //   );
                              // });
                            },
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                            maxLines: 1,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              hintText: 'What do you want to eat?',
                              hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
                              prefixIconConstraints: BoxConstraints(maxHeight: 20),
                              contentPadding: EdgeInsets.symmetric(horizontal: 17),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: Visibility(
                                visible: (searchInputController.text.isEmpty) ? true : false,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 12),
                                  child: SvgPicture.asset(
                                    'assets/icons/search.svg',
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Filter Button
                      GestureDetector(
                        onTap: (){},
                        // onTap: () {
                        //   showModalBottomSheet(
                        //       context: context,
                        //       backgroundColor: Colors.white,
                        //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                        //       builder: (context) {
                        //         return SearchFilterModal();
                        //       }
                        //     );
                        // },
                        child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.secondary,
                          ),
                          child: SvgPicture.asset('assets/icons/filter.svg'),
                        ),
                      )
                    ],
                  ),
                ),
                // Search Keyword Recommendation
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 8),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemCount: popularRecipeKeyword.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 8);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.topCenter,
                        child: TextButton(
                          onPressed: () {
                            searchInputController.text = popularRecipeKeyword[index];
                          },
                          child: Text(
                            popularRecipeKeyword[index],
                            style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.w400),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          // Section 2 - Search Result
          Container(
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    'This is the result of your search..',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: searchResult.length,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16);
                  },
                  itemBuilder: (context, index) {
                    return RecipeTile(
                      data: searchResult[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}