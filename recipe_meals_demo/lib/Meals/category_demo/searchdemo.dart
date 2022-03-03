

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/Meals/Meal.dart';
import 'package:hungry/Meals/meal_item.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/models/helper/recipe_helper.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/modals/search_filter_modal.dart';
import 'package:hungry/views/widgets/recipe_tile.dart';

class SearchDemo extends StatefulWidget {
  @override
  _SearchDemoState createState() => _SearchDemoState();
}

class _SearchDemoState extends State<SearchDemo> {
  TextEditingController searchInputController = TextEditingController();
  List<Recipe> searchResult = RecipeHelper.sarchResultRecipe;
  List<Recipe> foundrecipe;
 
  @override
  initState() {
    print('init');
    foundrecipe = searchResult;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    print('runFilters');
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      print('runFilters if');
      results = searchResult.cast<Map<String, dynamic>>();
    } else {
      print('runFilters else');
      results = searchResult
          .where((Recipe) =>
              Recipe.title.toLowerCase().contains(enteredKeyword.toLowerCase())).cast<Map<String, dynamic>>()
          .toList();
        print(results);
      // we use the toLowerCase() method to make it case-insensitive
    }

     setState(() {
      print('set state');
      foundrecipe = results.cast<Recipe>();
    });
  }

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
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
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
                            onChanged: (value) => _runFilter(value),
                            
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
              ],
            ),
          ),
           Expanded(
                child: foundrecipe.isNotEmpty
                    ? Container(
                      padding: EdgeInsets.all(16.0),
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
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
                                physics: NeverScrollableScrollPhysics(),
                                separatorBuilder: (context,index)
                                {
                                  return SizedBox(height: 16,);
                                },
                                itemCount: foundrecipe.length,
                                itemBuilder: (context,index){
                                  return RecipeTile
                                  (
                                    data: foundrecipe[index],
                                  );
                                }
                                // itemBuilder: (context, index) => Card(
                                //   key: ValueKey(foundrecipe[index].time),
                                //   color: Colors.amberAccent,
                                //   elevation: 4,
                                //   margin: const EdgeInsets.symmetric(vertical: 10),
                                //   child: ListTile(
                                //     leading: Text(
                                //       foundrecipe[index].title.toString(),
                                //       style: const TextStyle(fontSize: 24),
                                //     ),
                                //     title: Text(foundrecipe[index].description),
                                    
                                //   ),
                                // ),
                              ),
                          ],
                        ),
                      ),
                    )
                    : Container(
                      // color: AppColor.primary,
                      // width: double.infinity,
                      // height: double.infinity,
                      child: Center(
                        child: const Text(
                            'No results found!!',
                            style: TextStyle(fontSize: 24,fontFamily: 'inter',fontWeight: FontWeight.bold),
                          ),
                      ),
                    ),
              ),
        ],
      ),
    );
  }
}

