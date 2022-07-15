
// import 'package:calendar_agenda/calendar_agenda.dart';
// import 'package:calendar_appbar/calendar_appbar.dart';
// // import 'package:calendar_timeline/calendar_timeline.dart';
// import 'package:flutter_calendar_carousel/classes/event.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:intl/intl.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
// import 'package:newui/Screens/Food_logging.dart';
// import 'package:newui/Screens/Quantity.dart';
// import 'package:newui/Screens/progress.dart';
// import 'package:newui/theme/theme.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';

// class Meals extends StatefulWidget {
//   const Meals({ Key? key }) : super(key: key);

//   @override
//   State<Meals> createState() => _MealsState();
// }

// class _MealsState extends State<Meals> {

//  final dateFormatter = DateFormat('yyyy-MM-dd').format;
//   final _now = DateTime.now();
//   DateTime _currentDate = DateTime.now();
//   String _currentMonth = DateFormat.yMMM().format(DateTime.now());
//   DateTime _targetDateTime = DateTime.now();

//   @override
//   Widget build(BuildContext context) {

//     //    final _calendarCarousel = CalendarCarousel<Event>(
//     //   onDayPressed: (date, events) {
//     //     setState(() {
//     //       print(date.toString());
//     //       _currentDate = date;
//     //       // events =
//     //       //     DateFormat('yyyy-MM-dd').format(DateTime.parse(date.toString()));
//     //     });
//     //   },
//     //   height: 80.0,
//     //   thisMonthDayBorderColor: Appcolor.datebg,
//     //   headerText: _currentMonth,
//     //   headerTextStyle: TextStyle(
//     //     color: Appcolor.datebg,
//     //     fontFamily: 'Roboto',
//     //     fontWeight: FontWeight.w600,
//     //     fontSize: 20,
//     //   ),

//     //   weekFormat: true,
//     //   weekdayTextStyle: TextStyle(
//     //     color: Appcolor.datebg,
//     //     fontFamily: 'Roboto',
//     //     fontWeight: FontWeight.w600,
//     //     fontSize: 20,
//     //   ),
//     //   weekendTextStyle: TextStyle(
//     //     color: Appcolor.datebg,
//     //     fontFamily: 'Roboto',
//     //      fontSize: 20,
//     //   ),
//     //   // markedDatesMap: _markedDateMap,

//     //   selectedDateTime: _currentDate,
//     //   selectedDayButtonColor: Appcolor.datebg,
//     //   selectedDayTextStyle: TextStyle(
//     //     color: Colors.white,
//     //     fontFamily: 'Roboto',
//     //      fontSize: 20,
//     //   ),
//     //   // markedDateWidget: Positioned(child: Container(color: Colors.blueAccent, height: 4.0, width: 4.0), bottom: 4.0, left: 18.0),

//     //   todayButtonColor: Appcolor.datebg,
//     //   todayBorderColor: Appcolor.datebg,
//     //   todayTextStyle: TextStyle(
//     //     color: Colors.white,
//     //     fontFamily: 'Roboto',
//     //      fontSize: 20,
//     //   ),

//     //   daysTextStyle: TextStyle(
//     //     color: Appcolor.datebg,
//     //     fontFamily: 'Roboto',
//     //      fontSize: 20,
//     //   ),

//     //   targetDateTime: _targetDateTime,
//     //   showIconBehindDayText: true,
//     //     //  daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
//     //   customGridViewPhysics: NeverScrollableScrollPhysics(),
//     //   markedDateShowIcon: true,
//     //   markedDateIconMaxShown: 2,
//     //   // markedDateIconBuilder: (event) {
//     //   //   return event.icon ?? Icon(Icons.help_outline);
//     //   // },
//     //   minSelectedDate: _currentDate.subtract(Duration(days: 360)),
//     //   maxSelectedDate: _currentDate.add(Duration(days: 360)),
//     //   markedDateMoreShowTotal:
//     //       true, // null for not showing hidden events indicator
//     //     //  markedDateIconMargin: 9,
//     //     //  markedDateIconOffset: 3,
//     //     showHeader:false,
//     //     // width: 3,
//     //     // dayPadding: 10,
//     //     // markedDateCustomShapeBorder:
//     // );

//     return SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             // SizedBox(
//             //   child: CalendarAppBar(
//             //         fullCalendar: false,
//             //         backButton: false,
//             //         padding: 10.0,
//             //         white: Appcolor.datebg,//-->buttonbg
//             //         black: Appcolor.background,
//             //         accent: Appcolor.background,
//             //         onDateChanged: (value) => print(value),
//             //         firstDate: DateTime.now().subtract(Duration(days: 140)),
//             //         lastDate: DateTime.now(),
//             //       ),
//             // ),

// //             CalendarTimeline(
// //               initialDate: DateTime.now(),
// // firstDate: DateTime.now().subtract(Duration(days: 140)),
// // lastDate: DateTime.now().add(Duration(days: 4)),
// //   // initialDate: DateTime(2020, 4, 20),
// //   // firstDate: DateTime(2019, 1, 15),
// //   // lastDate: DateTime(2020, 11, 20),
// //   onDateSelected: (date) => print(date),
// //   leftMargin: 20,
// //   monthColor: Appcolor.background,
// //   dayColor: Appcolor.datetext,
// //   activeDayColor: Colors.white,
// //   activeBackgroundDayColor: Appcolor.datebg,
// //   dotsColor: Appcolor.datebg,
// //   // selectableDayPredicate: (date) => date.day != 23,
// //   // locale: 'en_ISO',
// // ),

//             CalendarAgenda(
//               leftMargin: 0,
//               padding: 0,
//               fullCalendar: false,
//               selectedDateColor: Appcolor.datebg,
//               // calendarEventSelectedColor: Appcolor.card,
//              dateColor: Appcolor.datetext,
//               backgroundColor: Appcolor.background,
//               // calendarBackground: Appcolor.background,
// initialDate: DateTime.now(),
// firstDate: DateTime.now().subtract(Duration(days: 140)),
// lastDate: DateTime.now().add(Duration(days: 4)),
// onDateSelected: (date) {
// print(date);
// },
// ),

// SizedBox
// (
//   height: 20,
// ),
//             // SizedBox
//             // (
//             //   height: 40,
//             // ),
//             // SizedBox(
//             //           //color: Colors.amber,
                      
//             //           // margin: EdgeInsets.symmetric(horizontal: 4.0),
//             //           child: _calendarCarousel,
//             //         ),
//             // SizedBox
//             // (
//             //   height: 50,
//             // ),

            
      
//             ListTile
//             (
//               onTap: ()
//               {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodLogging()
//                                                 ));
//               },
//               visualDensity: VisualDensity(vertical: 4),
//               leading: SizedBox(
//                 child: CircularPercentIndicator(
//                   backgroundColor: Appcolor.card,
//                   radius: 35.0,
//                   lineWidth: 5.0,
//                   animation: true,
//                   percent: 0.0,
//                   center: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       new Text(
//                         "0",
//                         style:
//                 new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//                       ),
//                       new Text(
//                         "cals",
//                         style:
//                 new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
           
//               title: Text
//                       (
//                         'Stay Healthy',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'Roboto',
//                           fontSize: 20,
//                         ),
//                       ),
//               subtitle:  Text
//                       (
//                         'Total day budget: 1800 cals',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Roboto',
//                           fontSize: 20,
//                         ),
//                       ),
//               trailing: SizedBox(
//                 height: 80,
//                 child: Icon(Icons.expand_more,size: 30,color: Appcolor.datetext,)),
//             ),
//             SizedBox
//             (
//               height: 40,
//             ),
      
//             //list
//             ListTile(
//               onTap: ()
//               {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Progress()
//                                                 ));
//               },
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10))),
//                 tileColor: Appcolor.card,
//                 textColor: Appcolor.text,
//                 iconColor: Appcolor.text,
//                 leading: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.sunny_snowing))),
//                 title: Text('Mid Morning',   style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),),
//                 subtitle: Text('7:00 AM . 100 calories',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
//                 trailing: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.expand_more,color: Appcolor.datetext,size: 30))),
//               ),
//               SizedBox
//             (
//               height: 20,
//             ),
//               ListTile(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10))),
//                 tileColor: Appcolor.card,
//                 textColor: Appcolor.text,
//                 iconColor: Appcolor.text,
//                 leading: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.wb_sunny))),
//                 title: Text('Breakfast',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0)),
//                 subtitle: Text('8:00 AM . 500 calories',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
//                 trailing: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.expand_more,color: Appcolor.datetext,size: 30,))),
//               ),
              
//                SizedBox
//             (
//               height: 20,
//             ),
//               ListTile(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10))),
//                 tileColor: Appcolor.card,
//                 textColor: Appcolor.text,
//                 iconColor: Appcolor.text,
//                 leading: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.sunny))),
//                 title: Text('Lunch',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0)),
//                 subtitle: Text('1:30 PM . 500 calories',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
//                 trailing: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.expand_more,color: Appcolor.datetext,size: 30))),
//               ),
//                SizedBox
//             (
//               height: 20,
//             ),
//               ListTile(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10))),
//                 tileColor: Appcolor.card,
//                 textColor: Appcolor.text,
//                 iconColor: Appcolor.text,
//                 leading: SizedBox(width:50,height:80,child: Center(child: Icon(FontAwesomeIcons.burger))),
//                 title: Text('Snacks',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0)),
//                 subtitle: Text('4:30 PM . 100 calories',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
//                 trailing: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.expand_more,color: Appcolor.datetext,size: 30))),
//               ),
//                SizedBox
//             (
//               height: 20,
//             ),
//               ListTile(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                         bottomLeft: Radius.circular(10))),
//                 tileColor: Appcolor.card,
//                 textColor: Appcolor.text,
//                 iconColor: Appcolor.text,
//                 leading: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.nightlight))),
//                 title: Text('Dinner',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0)),
//                 subtitle: Text('7:30 PM . 500 calories',style:
//                 new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0)),
//                 trailing: SizedBox(width:50,height:80,child: Center(child: Icon(Icons.expand_more,color: Appcolor.datetext,size: 30))),
//               ),
//                SizedBox
//             (
//               height: 40,
//             ),

//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text('How are our meal guidelines?',style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Roboto',
//                             fontSize: 25,
//                           ),),
//             ),
//                SizedBox
//             (
//               height: 40,
//             ),
//             Row
//             (
//               children: 
//               [
//                 Expanded
//                 (
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text
//                         (
//                           '☹️',
//                           style: TextStyle(
//                             color: Colors.black45,
//                             fontFamily: 'Roboto',
//                             fontSize: 20,
//                           ),
//                         ),
//                   ),
//                 ),
//                 Expanded
//                 (
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text
//                         (
//                           '😐',
//                           style: TextStyle(
//                             color: Colors.black45,
//                             fontFamily: 'Roboto',
//                             fontSize: 20,
//                           ),
//                         ),
//                   ),
//                 ),
//                 Expanded
//                 (
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text
//                         (
//                           '😌',
//                           style: TextStyle(
//                             color: Colors.black45,
//                             fontFamily: 'Roboto',
//                             fontSize: 20,
//                           ),
//                         ),
//                   ),
//                 ),
//                 Expanded
//                 (
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Text
//                         (
//                           '😄',
//                           style: TextStyle(
//                             color: Colors.black45,
//                             fontFamily: 'Roboto',
//                             fontSize: 20,
//                           ),
//                         ),
//                   ),
//                 ),
                
//               ],
//             ),
//                SizedBox
//             (
//               height: 20,
//             ),

//           //   Container(
//           // width: 300,
//           // decoration: BoxDecoration(
//           //     borderRadius: BorderRadius.circular(20),
//           //     border: Border.all(
//           //         width: 1, color: Colors.purple, style: BorderStyle.solid)),
//           // child: TextField(
//           //   minLines: 10,
//           //   maxLines: 20,
//           //   decoration: const InputDecoration(
//           //     fillColor: Colors.white,
//           //     filled: true,
//           //       hintText: 'Type someting here',
//           //       contentPadding: EdgeInsets.all(15),
//           //       border: InputBorder.none),
//           //   onChanged: (value) {},
//           // ),
//         // ),
          
//             SizedBox(
                                   
//                                     // padding: const EdgeInsets.all(6.0),
//                                     child: TextFormField(
//                                       minLines: 3,
//                                       maxLines: 15,
//                                       readOnly: true,
//                                       // controller: _cancelController,
//                                       keyboardType: TextInputType.multiline,
//                                       onChanged: (value) {},
//                                       decoration: InputDecoration(
//                                         hintText: 'We\'d love to know more :)',
//                                         hintStyle: TextStyle(color: Colors.grey,
//                                           fontFamily: 'Roboto',
//                                           fontSize: 15,
//                                           ),
//                                           fillColor: Colors.white,
//                                           filled: true,

//                                           // border: InputBorder.none,
//                                           focusedBorder: InputBorder.none,
//                                           enabledBorder: InputBorder.none,
//                                           errorBorder: InputBorder.none,
//                                           disabledBorder: InputBorder.none,
//                                           // border: BorderSide.none
                                          
//                                         // border: OutlineInputBorder
//                                         // (
//                                         //   // borderSide: BorderSide(color: Colors.white),
//                                         //   borderSide: BorderSide.none,
//                                         //   borderRadius: BorderRadius.circular(60)
//                                         // )
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox
//                                   (
//                                     height: 20,
//                                   ),

//                                   // Container(
//                                   //   decoration: BoxDecoration(
//                                   //     // color: Appcolor.scaffoldColor,
//                                   //     borderRadius: const BorderRadius.all(
//                                   //       Radius.circular(6),
//                                   //     ),
//                                   //     border: Border.all(
//                                   //         // width: 5,
//                                   //         color: Colors.white),
//                                   //   ),
//                                   //   padding: const EdgeInsets.all(6.0),
//                                   //   child: TextFormField(
//                                   //     minLines: 3,
//                                   //     maxLines: 5,
//                                   //     // maxLength: 100,
//                                   //     // controller: _cancelController,
//                                   //     keyboardType: TextInputType.multiline,
//                                   //     onChanged: (value) {},
//                                   //     decoration: InputDecoration(
//                                   //       fillColor: Colors.white,
//                                   //       filled: true,
//                                   //       border: InputBorder.none,
//                                   //     ),
//                                   //   ),
//                                   // ),
                                  
//                                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Text
//                         (
//                           'DONE',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.w900,
//                             fontFamily: 'Roboto',
//                             fontSize: 20,
//                           ),
//                         ),
//                   ),
//                SizedBox
//             (
//               height: 80,
//             ),
//           ],
//         ),
//       );
//   }
// }