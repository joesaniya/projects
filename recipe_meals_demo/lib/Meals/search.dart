import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/Meals/Category.dart';
import 'package:hungry/Meals/Meal.dart';
import 'package:hungry/Meals/categories.dart';
import 'package:hungry/Meals/dummy_data.dart';
import 'package:hungry/Meals/meal_item.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/models/helper/recipe_helper.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/modals/search_filter_modal.dart';
import 'package:hungry/views/widgets/recipe_tile.dart';


class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondary,
      appBar: AppBar(title: Text('search'),
      backgroundColor: AppColor.primary,
      actions: [
        IconButton(onPressed: (){
          showSearch
          (
            context: context, 
            delegate: DataSearch()
          );
        }, icon: Icon(Icons.search))
      ],
      ),
      
    );
  }
}

class DataSearch extends SearchDelegate<String>
{
//   final List<Recipe> popularRecipe = RecipeHelper.popularRecipe;
// final List<Recipe> sweetFoodRecommendationRecipe = RecipeHelper.sweetFoodRecommendationRecipe;  

final List<Recipe> searchResult = RecipeHelper.sarchResultRecipe;
final List recentrecipes =[
  "sampar1","sampar2"
];

// final List<Map<String,dynamic>> recentrecipes=[
//   // {
//   //   'title': 'Healthy Vege Green Egg.',
//   //   'photo': 'assets/images/list1.jpg',
//   //   'calories': '1500 Cal',
//   //   'time': '25 min',
//   //   'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //   'ingridients': [
//   //     {
//   //       'name': 'Spinach',
//   //       'size': '250 g',
//   //     },
//   //     {
//   //       'name': 'Noodles',
//   //       'size': '1000 g',
//   //     },
//   //     {
//   //       'name': 'Chili',
//   //       'size': '50 g',
//   //     },
//   //     {
//   //       'name': 'Chocolatte',
//   //       'size': '1000 g',
//   //     },
//   //     {
//   //       'name': 'Brocolli',
//   //       'size': '150 g',
//   //     }
//   //   ],
//   //   'tutorial': [
//   //     {
//   //       'step': '1. Tuangkan Air.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '2. Masukkan Mie.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '3. Cuci Piringnya.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '4. Tambahkan Nasi.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '5. Buang semua isi piring.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //   ],
//   //   'reviews': [
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //   ]
//   // },
//   // {
//   //   'title': 'Healthy Vege Green Egg.',
//   //   'photo': 'assets/images/list1.jpg',
//   //   'calories': '1500 Cal',
//   //   'time': '25 min',
//   //   'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //   'ingridients': [
//   //     {
//   //       'name': 'Spinach',
//   //       'size': '250 g',
//   //     },
//   //     {
//   //       'name': 'Noodles',
//   //       'size': '1000 g',
//   //     },
//   //     {
//   //       'name': 'Chili',
//   //       'size': '50 g',
//   //     },
//   //     {
//   //       'name': 'Chocolatte',
//   //       'size': '1000 g',
//   //     },
//   //     {
//   //       'name': 'Brocolli',
//   //       'size': '150 g',
//   //     }
//   //   ],
//   //   'tutorial': [
//   //     {
//   //       'step': '1. Tuangkan Air.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '2. Masukkan Mie.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '3. Cuci Piringnya.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '4. Tambahkan Nasi.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //     {
//   //       'step': '5. Buang semua isi piring.',
//   //       'description':
//   //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
//   //     },
//   //   ],
//   //   'reviews': [
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //     {
//   //       'username': '@username',
//   //       'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//   //     },
//   //   ]
//   // },
//   ];
TextEditingController searchInputController = TextEditingController();

  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton
      (
        onPressed: (){}, 
        icon: Icon(Icons.clear)
      )
    ]; 
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton
    (
      onPressed: (){}, 
      icon: AnimatedIcon
      (
        icon: AnimatedIcons.menu_arrow, 
        progress: transitionAnimation
      )
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  //   @override
  // Widget buildSuggestions(BuildContext context) 
  // {
  //   final mylist = Category();
  //   return ListView.builder
  //   (
  //     itemCount: Category.length,
  //     itemBuilder: (context,index)
  //     {
  //       final FoodItem listItem = mylist[index];
  //     }
  //   );
  // }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList =query.isEmpty?recentrecipes:searchResult;
    // return   Container(
    //               height: 60,
    //               margin: EdgeInsets.only(top: 8),
    //               child: ListView.separated(
    //                 shrinkWrap: true,
    //                 scrollDirection: Axis.horizontal,
    //                 physics: BouncingScrollPhysics(),
    //                 padding: EdgeInsets.symmetric(horizontal: 16),
    //                 itemCount: popularRecipeKeyword.length,
    //                 separatorBuilder: (context, index) {
    //                   return SizedBox(width: 8);
    //                 },
    //                 itemBuilder: (context, index) {
    //                   return Container(
    //                     alignment: Alignment.topCenter,
    //                     child: TextButton(
    //                       onPressed: () {
    //                         searchInputController.text = popularRecipeKeyword[index];
    //                       },
    //                       child: Text(
    //                         popularRecipeKeyword[index],
    //                         style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.w400),
    //                       ),
    //                       style: OutlinedButton.styleFrom(
    //                         side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
    //                       ),
    //                     ),
    //                   );
    //                 },
    //               ),
    //             );
    return ListView.builder
    (
      itemBuilder: (context,index)=>ListTile(
        leading: Icon(Icons.settings_suggest_outlined),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
  
}



// class SearchPage extends StatefulWidget {
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   TextEditingController searchInputController = TextEditingController();
//   final List<Recipe> searchResult = RecipeHelper.sarchResultRecipe;
//    List<Meal> displayedMeals;

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
//             height: 145,
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
//                         onTap: (){},
//                         // onTap: () {
//                         //   showModalBottomSheet(
//                         //       context: context,
//                         //       backgroundColor: Colors.white,
//                         //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//                         //       builder: (context) {
//                         //         return SearchFilterModal();
//                         //       }
//                         //     );
//                         // },
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
//                 Container(
//                   height: 60,
//                   margin: EdgeInsets.only(top: 8),
//                   child: ListView.separated(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     physics: BouncingScrollPhysics(),
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     itemCount: popularRecipeKeyword.length,
//                     separatorBuilder: (context, index) {
//                       return SizedBox(width: 8);
//                     },
//                     itemBuilder: (context, index) {
//                       return Container(
//                         alignment: Alignment.topCenter,
//                         child: TextButton(
//                           onPressed: () {
//                             searchInputController.text = popularRecipeKeyword[index];
//                           },
//                           child: Text(
//                             popularRecipeKeyword[index],
//                             style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.w400),
//                           ),
//                           style: OutlinedButton.styleFrom(
//                             side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 )
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
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
