import 'package:flutter/material.dart';
import 'package:newui/Screens/journal.dart';
import 'package:newui/theme/theme.dart';
import 'package:underline_indicator/underline_indicator.dart';

class Progress extends StatefulWidget {
  const Progress({ Key? key }) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
   TabController? _tabController;
  @override
  Widget build(BuildContext context) {

//   return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         backgroundColor: Appcolor.background,
//           appBar: AppBar(
//             elevation: 0.5,
//             backgroundColor: Appcolor.background,
//           bottom: TabBar(
//                           indicator: UnderlineIndicator(
//                         strokeCap:
//                             StrokeCap.round, // Set your line endings.
//                         borderSide: BorderSide(
//                           color: Appcolor.datebg,
//                           width: 4,
//                         ),
//                         insets: EdgeInsets.only(bottom: 0)),
//                         indicatorSize: TabBarIndicatorSize.label,
//           tabs: <Widget>[
//             Tab(text: "Tab1"),
//             Tab(text: "Tab2"),
//             Tab(text: "Tab3")
//           ],
//         ),
//       ),
//     body: TabBarView(
//       children: <Widget>[
//         Text("Content1"),
//         Text("Content2"),
//         Text("Content3")
//       ],
//     ),
//   ),
// );


    // return Scaffold(
    //   backgroundColor: Appcolor.background,
    //   appBar: AppBar
    //   (
    //     automaticallyImplyLeading: false,
    //     backgroundColor: Appcolor.background,
    //     elevation: 0.5,
    //     title: Text('Progress',style: TextStyle(
    //             fontFamily: 'Roboto',
    //             fontWeight: FontWeight.w700,
    //             fontSize: 28,
    //             color: Colors.black),),
    //   ),
    //   body: DefaultTabController(
    //     length: 2,
    //     child: Column(
    //       children: <Widget>[
    //         Container(
    //           constraints: BoxConstraints.expand(height: 50),
    //           decoration: BoxDecoration
    //           (
    //             border: Border
    //             (
    //               bottom: BorderSide(color: Colors.grey,width: 0.8)
    //             )
    //           ),
    //           child: TabBar(
    //                 controller: _tabController,
    //                 // indicatorColor: Appcolor.secondary,
    //                 indicator: UnderlineIndicator(
    //                     strokeCap:
    //                         StrokeCap.round, // Set your line endings.
    //                     borderSide: BorderSide(
    //                       color: Appcolor.datebg,
    //                       width: 4,
    //                     ),
    //                     insets: EdgeInsets.only(bottom: 0)),
    //                     indicatorSize: TabBarIndicatorSize.label,
    //                 isScrollable: true,
    //                 unselectedLabelColor: Colors.grey,
    //                 labelColor: Colors.black,
    //                 // unselectedLabelColor: Colors.black.withOpacity(0.6),
    //                 labelStyle: TextStyle(
    //                     fontFamily: 'Roboto',
    //                     fontWeight: FontWeight.w700,
    //                     color: Appcolor.datetext,
    //                     fontSize: 24),
    //                 tabs: const [
    //                   Tab(text: 'Meals'),
    //                   Tab(text: 'Recipes'),
    //                   // Tab(text: 'App Questions'),
    //                 ],
    //               ),
    //         ),
    //         Expanded(
    //           child: Container(
    //             child: TabBarView(children: [
    //               Container(
    //                 child: Text("Home Body"),
    //               ),
    //               Container(
    //                 child: Text("Articles Body"),
    //               ),
    //               // Container(
    //               //   child: Text("User Body"),
    //               // ),
    //             ]),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );


   return Scaffold(
    backgroundColor: Appcolor.background,
     appBar: AppBar
     (
         
        automaticallyImplyLeading: false,
        backgroundColor: Appcolor.background,
        elevation: 0.5,
        title: Text('Progress',style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Colors.black),),
      
     ),
     body: Scaffold(
       body: DefaultTabController(
         length: 4,
         child: Scaffold(
          backgroundColor: Appcolor.background,
           appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.5, // bottom bar
             bottom: PreferredSize(
               child: TabBar(
                //  labelColor: Colors.black,
                //  indicatorColor: Colors.red,
                indicator: UnderlineIndicator(
                        strokeCap:
                            StrokeCap.round, // Set your line endings.
                        borderSide: BorderSide(
                          color: Appcolor.datebg,
                          width: 4,
                        ),
                        insets: EdgeInsets.only(bottom: 0)),
                        indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    // unselectedLabelColor: Colors.black.withOpacity(0.6),
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Appcolor.datetext,
                        fontSize: 18),
                 tabs: <Widget>[
                   Tab(
                     text: "Goals",
                   ),
                   Tab(
                     text: "Habits",
                   ),
                   Tab(
                     text: "Health",
                   ),
                   Tab(
                     text: "Journal",
                   ),
                 ],
               ),
               preferredSize: Size.fromHeight(0.0),
             ),
             backgroundColor: Appcolor.background,
           ),
           body: TabBarView(
             children: <Widget>[
               Container(
                 color: Colors.white,
                 child: Center(
                   child: Text("Past Order"),
                 ),
               ),
               Container(
                 color: Colors.white,
                 child: Center(
                   child: Text("Past Order"),
                 ),
               ),
               Container(
                 color: Colors.white,
                 child: Center(
                   child: Text("Past Order"),
                 ),
               ),
               Journals()
              //  Container(
              //    color: Colors.white,
              //    child: Center(
              //      child: Text("Upcoming"),
              //     ),
              //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}