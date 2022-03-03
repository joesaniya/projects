
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/views/screens/recipe_detail_page.dart';
import 'package:hungry/views/utils/AppColor.dart';
import '../meal.dart';
import '../meal_detail_screen.dart';

class Currycategories extends StatefulWidget {
  static const routeName = '/Currycategories';

  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  // final Function removeItem;

  Currycategories(
    {
      @required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.complexity,
      @required this.affordability,
      // required this.removeItem,
    }
  );

  @override
  State<Currycategories> createState() => _CurrycategoriesState();
}

class _CurrycategoriesState extends State<Currycategories> {
  String get ComplexityText
  {
    switch (widget.complexity)
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
   switch (widget.affordability)
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
      arguments: widget.id,
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
    return SingleChildScrollView(
      child: GestureDetector(
      onTap: ()=>selectMeal(context),
      // onTap: () {
      //   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => RecipeDetailPage(data: data)));
      // },
      child: Container(
        height: 90,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.whiteSoft,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Recipe Photo
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueGrey,
                image: DecorationImage(image: NetworkImage(widget.imageUrl), fit: BoxFit.cover),
              ),
            ),
            // Recipe Info
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Recipe title
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        widget.title,
                        style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'inter'),
                      ),
                    ),
                    // Recipe Calories and Time
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/fire-filled.svg',
                          color: Colors.black,
                          width: 12,
                          height: 12,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("13",
                            // data.calories,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.alarm,
                          size: 14,
                          color: Colors.black,
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(left: 5),
                        //   child: Text(
                        //     data.time,
                        //     style: TextStyle(fontSize: 12),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
        ),
    );
    // return InkWell(
    //   onTap: ()=>selectMeal(context),
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(15)
    //     ),
    //     elevation: 4.0,
    //     margin: EdgeInsets.all(10.0),
    //     child: Column(
    //       children: [
    //         Stack(
    //           children: [
    //             ClipRRect(borderRadius:BorderRadius.only(
    //               topLeft: Radius.circular(15.0),
    //               topRight: Radius.circular(15.0),
    //             ) ,
    //             child: Image.network(
    //               imageUrl,
    //               height: 250.0, 
    //               width: double.infinity,
    //               fit: BoxFit.cover,
    //             ),
    //             ),
    //             Positioned(
    //               bottom: 20.0,
    //               right: 10.0,
    //               child: Container(
    //                 width: 300,
    //                 color: Colors.black54,
    //                 padding: EdgeInsets.symmetric(vertical: 5.0,horizontal:20.0 ),
    //                 child: Text(
    //                   title,
    //                   style: TextStyle(
    //                     fontSize: 26,
    //                     color: Colors.white,
    //                   ),
    //                   softWrap: true,
    //                   overflow: TextOverflow.fade,
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(20.0),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               Row(
    //                 children: [
    //                   Icon(Icons.schedule),
    //                   SizedBox(
    //                     width: 6.0,
    //                   ),
    //                   Text('$duration min',
    //                   style: TextStyle(color:Colors.pinkAccent[200]),
    //                   ),
    //                 ],
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(Icons.work),
    //                   SizedBox(
    //                     width: 6.0,
    //                   ),
    //                   Text(ComplexityText,
    //                   style: TextStyle(color:Colors.pinkAccent[200]),
    //                   ),
    //                 ],
    //               ),
    //                 Row(
    //                 children: [
    //                   Icon(Icons.attach_money),
    //                   SizedBox(
    //                     width: 6.0,
    //                   ),
    //                   Text(AffordabilityText,
    //                   style: TextStyle(color:Colors.pinkAccent[200]),
    //                   ),
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}