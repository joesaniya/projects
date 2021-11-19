import 'package:flutter/material.dart';
import './meal.dart';
import './meal_item.dart';


class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favouriteMeals.isEmpty)
    {
       return Container(
         decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('assets/images/fav-img.jpeg'), fit: BoxFit.cover,),
          ),
         child: Center
          (
            child: Text('You have no favourite yet - start adding some item!',
            style:TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,fontSize: 16),),
          ),
       ); 
    }
    else{
      return Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('assets/images/fav-img.jpeg'), fit: BoxFit.cover,),
          ),
        child: ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                id: favouriteMeals[index].id,
                title: favouriteMeals[index].title,
                imageUrl: favouriteMeals[index].imageUrl,
                duration: favouriteMeals[index].duration,
                affordability: favouriteMeals[index].affordability,
                complexity: favouriteMeals[index].complexity,
                // removeItem: _removeMeal,
              );
            },
            itemCount: favouriteMeals.length,
          ),
      );
    } 
  }
}