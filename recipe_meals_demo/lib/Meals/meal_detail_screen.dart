

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/views/screens/full_screen_image.dart';
import 'package:hungry/views/utils/AppColor.dart';
import './Meal.dart';
import './dummy_data.dart';

class MealDetailScreen extends StatefulWidget {
  static const routeName ='/meal-detail';

  final Function toggleFavourite;
  final Function isFavourite;

   MealDetailScreen
    (
      this.toggleFavourite,
      this.isFavourite
    );

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> with TickerProviderStateMixin {
  
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _scrollController.addListener(() {
      changeAppBarColor(_scrollController);
    });
  }

  Color appBarColor = Colors.transparent;

  changeAppBarColor(ScrollController scrollController) {
    if (scrollController.position.hasPixels) {
      if (scrollController.position.pixels > 2.0) {
        setState(() {
          appBarColor = AppColor.primary;
        });
      }
      if (scrollController.position.pixels <= 2.0) {
        setState(() {
          appBarColor = Colors.transparent;
        });
      }
    } else {
      setState(() {
        appBarColor = Colors.transparent;
      });
    }
  }

  // fab to write review
  showFAB(TabController tabController) {
    int reviewTabIndex = 2;
    if (tabController.index == reviewTabIndex) {
      return true;
    }
    return false;
  }
  
  Widget buildSectionTitle(BuildContext context, String text)
  {
    return Container
            (
              // color: AppColor.primary,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                text,style: Theme.of(context).textTheme.subtitle1, 
              ),
            );
  }

 Widget buildContainer(Widget child)
 {
    return Container(
              decoration: BoxDecoration(
                color:Colors.white,
                border: Border.all(
                  color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(10.0)
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              height: 150.0,
              width: 300.0,
              child: child
     );
 }

  @override
  Widget build(BuildContext context) {
    final mealId=ModalRoute.of(context).settings.arguments as String;
    final selectedMeal=DUMMY_MEALS.firstWhere((Meal)=> Meal.id ==mealId );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AnimatedContainer(
          color: appBarColor,
          duration: Duration(milliseconds: 200),
          child: AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.dark,
            elevation: 0,
            centerTitle: true,
            title: Text('Recipe', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              // FloatingActionButton
              //   (
              //     child: Icon(
              //       isFavourite(mealId) ? Icons.star:Icons.star_border,
              //     ),
              //     // onPressed:toggleFavourite(mealId),
              //     onPressed: () => toggleFavourite(mealId),
              //   ),
              IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/icons/bookmark.svg', color: Colors.white)),
            ],
          ),
        ),
      ),
      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Recipe Image
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FullScreenImage(image: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover))));
            },
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(selectedMeal.imageUrl), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(gradient: AppColor.linearBlackTop),
                height: 280,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          // Section 2 - Recipe Info
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 20, bottom: 30, left: 16, right: 16),
            color: AppColor.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12, top: 16),
                  child: Text(
                    selectedMeal.title,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'inter'),
                  ),
                ),
                // Recipe Description
                // Text(
                //   widget.data.description,
                //   style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14, height: 150 / 100),
                // ),
              ],
            ),
          ),
          // Tabbar ( Ingridients, Tutorial, Reviews )
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: AppColor.secondary,
            child: TabBar(
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  _tabController.index = index;
                });
              },
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black.withOpacity(0.6),
              labelStyle: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w500),
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Ingridients',
                ),
                Tab(
                  text: 'Steps',
                ),
              ],
            ),
          ),
          // IndexedStack based on TabBar index
          IndexedStack(
            index: _tabController.index,
            children: [
              // Ingridients
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: selectedMeal.ingredients.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[350], width: 1))),
      child: Flexible(
        flex: 9,
        child: Text(
          selectedMeal.ingredients.toString(),
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 150 / 100),
        ),
      ),
    );
                  // return IngridientTile(
                  //   data: widget.data.ingridients[index],
                  // );
                },
              ),
              // Tutorials
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: selectedMeal.steps.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[350], width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectedMeal.steps.toString(),
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 150 / 100)
          ),
        ],
      ),
    );
                  // return StepTile(
                  //   data: widget.data.tutorial[index],
                  // );
                },
              ),
              // Reviews
            ],
          ),
        ],
      ),
      //remove the Recipes
      // floatingActionButton: FloatingActionButton
      // (
      //   child: Icon(Icons.delete),
      //   onPressed: (){
      //     Navigator.of(context).pop(mealId);
      //   },
      // ),

      floatingActionButton: FloatingActionButton
      (
        backgroundColor: AppColor.primary,
        child: Icon(
          widget.isFavourite(mealId) ? Icons.star:Icons.star_border,
        ),
        // onPressed:toggleFavourite(mealId),
        onPressed: () => widget.toggleFavourite(mealId),
      ),
      
    );
  }
}