import 'package:flutter/material.dart';
import '../category_meals_screen.dart';





class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String image;
  // final String rid;

  CategoryItem
  (
    this.id,
    this.title,
    this.color, 
    this.image,
    // this.rid
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

  return InkWell(
    onTap: () => selectCategory(context),
    child: Container(
        width: ((MediaQuery.of(context).size.width - 16 - 16) / 2) - 8, // 16  = horizontal padding , /2 = because there is 2 box horizontal, -8 = distance between box, 8*2 = 16
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // Image
          image: new DecorationImage(image: new AssetImage(image), fit: BoxFit.cover,),
        ),
        child: Container(
          width: 164,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color(0xFF062D2B).withOpacity(0.40)),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'inter'),
          ),
        ),
      ),
  );


//  return Card(
//    elevation: 30.0,
//      shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//    child: Container(
//      width: ((MediaQuery.of(context).size.width - 16 - 16) / 2) - 8,
//      child: InkWell(
//           onTap: () => selectCategory(context),
//           splashColor: Theme.of(context).primaryColor,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//                width: 164,
//           height: 60,
//           alignment: Alignment.center,
//               // padding: const EdgeInsets.all(15),
//               child: Text(
//                 title,
//                 style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'inter'),
//                 // style: Theme.of(context).textTheme.subtitle1,
//               ),
//               decoration: new BoxDecoration(
//                   image: new DecorationImage(image: new AssetImage(image), fit: BoxFit.cover,),
//                 ),
//               // decoration: BoxDecoration(
//               //   gradient: LinearGradient(
//               //     colors: [
//               //       color.withOpacity(0.7),
//               //       color,
//               //     ],
//               //     begin: Alignment.topLeft,
//               //     end: Alignment.bottomRight,
//               //   ),
//               //   borderRadius: BorderRadius.circular(15),
//               // ),
//             ),
//           ),
//         ),
//    ),
//  );
  }
}