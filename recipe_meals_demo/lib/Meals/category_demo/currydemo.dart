import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/views/screens/search_page.dart';
import 'package:hungry/views/utils/AppColor.dart';
// import 'Meal.dart';
import '../meal.dart';
import '../meal_item.dart';
// import './dummy_data.dart';




class demoCategoryMealsScreenn extends StatefulWidget {
  static const routeName = '/category-mealss';

  final List<Meal> availableMeals;

  demoCategoryMealsScreenn
  (
    this.availableMeals
  );

  @override
  _demoCategoryMealsScreennState createState() => _demoCategoryMealsScreennState();
}

class _demoCategoryMealsScreennState extends State<demoCategoryMealsScreenn> {
   String categoryTitle;
   List<Meal> displayedMeals;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedMeals = widget.availableMeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: AppColor.primary,
        brightness: Brightness.dark,
        elevation: 0,
        title: Text(categoryTitle,style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 18)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.white),
          ),
        ],
      ),
      // body: Container(
      //   decoration: new BoxDecoration(
      //       image: new DecorationImage(image: new AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,),
      //     ),
      //   child: ListView.builder(
      //     itemBuilder: (ctx, index) {
      //       return MealItem(
      //         id: displayedMeals[index].id,
      //         title: displayedMeals[index].title,
      //         imageUrl: displayedMeals[index].imageUrl,
      //         duration: displayedMeals[index].duration,
      //         affordability: displayedMeals[index].affordability,
      //         complexity: displayedMeals[index].complexity,
      //         // removeItem: _removeMeal,
      //       );
      //     },
      //     itemCount: displayedMeals.length,
      //   ),
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: displayedMeals.length,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16);
                },
                itemBuilder: (context, index) {
                 return MealItem(
                id: displayedMeals[index].id,
                title: displayedMeals[index].title,
                imageUrl: displayedMeals[index].imageUrl,
                duration: displayedMeals[index].duration,
                affordability: displayedMeals[index].affordability,
                complexity: displayedMeals[index].complexity,
                // removeItem: _removeMeal,
              );
                },
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
