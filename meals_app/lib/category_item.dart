import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';





class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String image;

  CategoryItem
  (
    this.id,
    this.title,
    this.color, 
    this.image
  );

  void selectCategory(BuildContext ctx)
  {
    Navigator.of(ctx).pushNamed(
      // '/category-meals',
      CategoryMealsScreen.routeName,
      arguments: {
        'id':id,
        'title':title,
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    // return InkWell(
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15.0),
    //   ),
    //     child: Container(
    //       decoration: new BoxDecoration(
    //               image: new DecorationImage(image: new AssetImage(image), fit: BoxFit.cover,),
    //             ),
    //       width: 179.0,
    //       height: 65.0,
    //       child: Text(
    //           title,
    //           style: Theme.of(context).textTheme.subtitle1,
    //         ),
    //     ),
    //   ),
    // );

 return Card(
   elevation: 30.0,
     shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
   child: InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage(image), fit: BoxFit.cover,),
              ),
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [
            //       color.withOpacity(0.7),
            //       color,
            //     ],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //   ),
            //   borderRadius: BorderRadius.circular(15),
            // ),
          ),
        ),
      ),
 );
  }
}