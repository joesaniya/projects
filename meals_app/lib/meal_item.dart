
import 'package:flutter/material.dart';
import 'package:meals_app/meal.dart';
import 'package:meals_app/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  // final Function removeItem;

  MealItem(
    {
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability,
      // required this.removeItem,
    }
  );
  
  String get ComplexityText
  {
    switch (complexity)
    {
      case Complexity.Simple:
        return 'simple';
      break;
      case Complexity.Challenging:
        return 'Challenging';
      break;
      case Complexity.Hard:
        return 'Hard';
      break;
      default:
        return 'unknown';
    }
  }

  String get AffordabilityText
  {
   switch (affordability)
    {
      case Affordability.Affordable:
        return 'Affordable';
      break;
      case Affordability.pricey:
        return 'Pricey';
      break;
      case Affordability.Luxurious:
        return 'Expensive';
      break;
      default:
        return 'unknown';
    } 
  }
  
  void selectMeal(BuildContext context)
  {
    Navigator.of(context).pushNamed
    (
      MealDetailScreen.routeName,
      arguments: id,
    )
    
    .then((result) {
      if(result!=null)
      {
        // removeItem(result);
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ) ,
                child: Image.network(
                  imageUrl,
                  height: 250.0, 
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ),
                Positioned(
                  bottom: 20.0,
                  right: 10.0,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5.0,horizontal:20.0 ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text('$duration min',
                      style: TextStyle(color:Colors.pinkAccent[200]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(ComplexityText,
                      style: TextStyle(color:Colors.pinkAccent[200]),
                      ),
                    ],
                  ),
                    Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(AffordabilityText,
                      style: TextStyle(color:Colors.pinkAccent[200]),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}