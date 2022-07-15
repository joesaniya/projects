
import 'package:faq/constants/faqmodel.dart';
import 'package:faq/constants/model-helper.dart';
import 'package:flutter/material.dart';

import 'constants/feauturedcard.dart';

void main() => runApp(MaterialApp(home:FAQPage()));

class FAQPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FAQPageState();
  }
}

class FAQPageState extends State<FAQPage> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0.5,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 24,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: data==null?Center(
        child: CircularProgressIndicator
        (
          color: Colors.purple,
          
        ),
      ):
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
      ),

      // body:  ListView.separated
      // (
      //   itemBuilder: (context, index) {
      //                     return FeaturedCard(
      //                         data: featuredRecipe[index]);
      //                   }, 
      //   separatorBuilder: (context, index) {
      //                     return SizedBox(
      //                       width: 16,
      //                     );
      //                   },
      //   itemCount: featuredRecipe.length
      // ),


      // body: 
      // // isFAQLoading == true
      // //     ? CircularProgressIndicator()
      // //     : 
      //     ListView.builder(
      //         itemCount: featuredRecipe.length,
      //         itemBuilder: (context, index) {
      //           return Column(children: <Widget>[
      //             Container(
      //               decoration: BoxDecoration(boxShadow: [
      //                 BoxShadow(
      //                     color: Colors.grey.shade200,
      //                     offset: Offset(1.0, 1.0),
      //                     spreadRadius: 0.2)
      //               ]),
      //               child: Card(
      //                 elevation: 0,
      //                 shadowColor: Colors.grey,
      //                 margin: EdgeInsets.only(
      //                   bottom: 3,
      //                 ),
      //                 child: ExpansionTile(
      //                     key: Key(index.toString()),
      //                     backgroundColor: Color(0xfff6f7f9),
      //                     initiallyExpanded: index == selected,
      //                     iconColor: Colors.grey,
      //                     title: Text(
      //                       '${F[index]['question']}',
      //                       style: TextStyle(
      //                           color: Color(0xFF444444),
      //                           fontSize: tSize14,
      //                           fontWeight: FontWeight.w500),
      //                     ),
      //                     children: <Widget>[
      //                       Padding(
      //                           padding: EdgeInsets.only(
      //                               top: 10.0, bottom: 10, left: 17, right: 17),
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.start,
      //                             children: [
      //                               Expanded(
      //                                 child: Text(
      //                                   "${faqListData[index]['answer']}",
      //                                   style: TextStyle(
      //                                     color: Color(0xFF444444),
      //                                     fontSize: 13,
      //                                   ),
      //                                   textAlign: TextAlign.start,
      //                                 ),
      //                               ),
      //                             ],
      //                           ))
      //                     ],
      //                     onExpansionChanged: ((newState) {
      //                       isExpand = newState;
      //                       print(newState);
      //                       if (newState)
      //                         setState(() {
      //                           Duration(seconds: 20000);
      //                           selected = index;
      //                           // isExpand=newState;
      //                         });
      //                       else
      //                         setState(() {
      //                           selected = -1;
      //                           // isExpand=newState;
      //                         });
      //                       print(selected);
      //                     })),
      //               ),
      //             ),
      //           ]);
      //         }),
    );
  }
}
