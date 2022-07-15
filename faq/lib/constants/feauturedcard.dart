import 'dart:ui';

import 'package:faq/constants/faqmodel.dart';
import 'package:flutter/material.dart';

import 'model-helper.dart';

class FeaturedCard extends StatefulWidget {
  final FaqModel data;
  FeaturedCard({required this.data});

  @override
  State<FeaturedCard> createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {
   bool isExpand = false;
  var selected;
  late final FaqModel models;
  final List<FaqModel> featuredRecipe = ModelHelper.featuredfaq;
   FaqModel? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpand = false;
  }

   @override
  // Widget build(BuildContext context) {
  //   return ListView.builder
  //   (

  //     itemBuilder: (context, index) {
        
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
  //   return GestureDetector(
  //     onTap: () {
  //       // Navigator.of(context).push(MaterialPageRoute(builder: (context) => RecipeDetailPage(data: data)));
  //     },
  //     // Card Wrapper
  //     child: Container(
  //       width: 180,
  //       height: 220,
  //       alignment: Alignment.bottomCenter,
  //       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
  //       // decoration: BoxDecoration(
  //       //   color: Colors.grey,
  //       //   borderRadius: BorderRadius.circular(10),
  //       //   image: DecorationImage(
  //       //     image: AssetImage(data.photo),
  //       //     fit: BoxFit.cover,
  //       //   ),
  //       // ),
  //       // Recipe Card Info
  //       child: ClipRect(
  //         child: BackdropFilter(
  //           filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
  //           child: Container(
  //             height: 80,
  //             padding: EdgeInsets.all(8),
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(5),
  //               color: Colors.black.withOpacity(0.26),
  //             ),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 // Recipe Title
  //                 Text(
  //                   widget.data.question.toString(),
  //                   maxLines: 2,
  //                   overflow: TextOverflow.ellipsis,
  //                   style: TextStyle(color: Colors.white, fontSize: 14, height: 150 / 100, fontWeight: FontWeight.w600, fontFamily: 'inter'),
  //                 ),
  //                 // Recipe Calories and Time
                  
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  return  
   ListView.builder
      (
        itemCount: featuredRecipe.length,
        itemBuilder: (context, index) {
          return Column
          (
            children: 
            [
              Container
              (
                decoration: BoxDecoration
                (
                  boxShadow: 
                  [
                    BoxShadow
                    (
                      color: Colors.grey.shade200,
                      offset: Offset(1.0,1.0),
                      spreadRadius: 0.2
                    )
                  ]
                ),
                child: Card
                (
                  elevation: 0,
                  shadowColor: Colors.grey,
                  margin: EdgeInsets.only
                  (
                    bottom: 3
                  ),
                  child: ExpansionTile
                  (
                    key: Key(index.toString()),
                    backgroundColor: Colors.red,
                    initiallyExpanded: index==selected,
                    iconColor: Colors.grey,
                    title: Text
                    (
                      data!.question.toString(),
                    ),
                    children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 10.0, bottom: 10, left: 17, right: 17),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        data!.answer.toString(),
                                        style: TextStyle(
                                          color: Color(0xFF444444),
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                          onExpansionChanged: ((newState)
                          {
                            isExpand=newState;
                            print(newState);
                            if(newState)
                            setState(() {
                                Duration(seconds: 20000);
                                selected=index;
                              });
                            else
                            setState(() {
                              selected=-1;
                            });
                            print(selected);
                          }

                          ),
                  ),
                ),
              )
            ],
          );
        },
      );
  }
      
  
}