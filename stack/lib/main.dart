

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    bool blue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.05,
              padding: EdgeInsets.only(left: 15,right: 15),
              // color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white
              ),

    


        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //        Expanded
        //        (
        //          child: FlatButton
        //           (onPressed: (){
        //             setState(() {
        //               blue=true;
        //             });
        //           },
        //           child: Text('data'),color:blue==false? Colors.purple:Colors.grey,
        //           shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
        //         ),
        //       ),
        //  Expanded
        //  (
        //    child:   FlatButton
        //    (
        //      onPressed: (){
        //      setState(() {
        //       blue=false;
        //     });
        //     }, 
        //     child: Text('data'),color:blue==false? Colors.grey:Colors.purple,
        //     shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
        //   )
        //  )
        //         ],
        //       ),
            ),
                      //           FlatButton(onPressed: (){
                      // setState(() {
                      //   blue=true;
                      // });
                      //           }, child: Text('data'),color:blue==false? Colors.yellow:Colors.blue,),
                      //            FlatButton(onPressed: (){
                      //              setState(() {
                      //   blue=false;
                      // });
                      //            }, child: Text('data'),color:blue==false? Colors.blue:Colors.yellow,)
        ],),
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
// double screenWidth = MediaQuery.of(context).size.width;

//     final double circleRadius = 120.0;
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         title: Text('stack'),
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//             children: [
              
//               Column(
//                 children: [
//                   Container(
//             margin: EdgeInsets.only(top: 48,left: 15,right: 15),
//                   // height: 300,
//                    width: MediaQuery.of(context).size.width,
//                   // height: MediaQuery.of(context).size.height*0.500,
//                   // height: MediaQuery.of(context).size.height*0.900,//landscape
//                   decoration: BoxDecoration(
//       color: Colors.red,
//       borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(15.0),
//                       topRight: Radius.circular(15.0)
//                     ),
//       ),
//       child: Column(
//             children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top:45.0),
//                       child: Expanded(
//                         child: Container(
//                           // padding: EdgeInsets.only(top: 50),
//                         width: MediaQuery.of(context).size.width*0.250,
//                                         height: MediaQuery.of(context).size.height*0.04,
//                               decoration: BoxDecoration(
//                                             color: Colors.purple,
//                                             borderRadius: BorderRadius.all(Radius.circular(50.0))
//                                           ),
//                               child: Center(
//                                 child: Text('2 hr 30min',
//                                 style: TextStyle(fontFamily: 'PT Sans',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.white
//                                 ),
//                                 ),
//                               ),
//                             ),
//                       ),
//                     ),
//                     Padding(
//                           padding: const EdgeInsets.only(top:8.0),
//                           child: Text('Earning \$25.02', 
//                            style: TextStyle
//                         (
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PT Sans',
//                           fontSize: 13,
//                           color: Colors.black
//                         ),
//                         ),
//                         ),
//                         SizedBox(
//                           height: MediaQuery.of(context).size.height*0.04,
//                         ),
//                     Material(
//       // color: Colors.green,
//       child: Center(
//             child: Container(
//               height: 90,
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 // borderRadius: BorderRadius.circular(25),
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 100,
//                     // color: Colors.red,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                         'FACILTY',
//                         style: TextStyle
//                         (
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PT Sans',
//                           fontSize: 17,
//                           color: Colors.black
//                         ),
//                         ),
//                         Text(
//                         'DATE',
//                          style: TextStyle
//                         (
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PT Sans',
//                           fontSize: 17,
//                           color: Colors.black
//                         ),
//                         ),
//                         Text(
//                         'TIME',
//                          style: TextStyle
//                         (
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PT Sans',
//                           fontSize: 17,
//                           color: Colors.black
//                         ),
//                         ),
//                         Text(
//                         'RATE',
//                          style: TextStyle
//                         (
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'PT Sans',
//                           fontSize: 17,
//                           color: Colors.black
//                         ),
//                         ),
//                         // Text('\$30,309.09',
//                         //   style: TextStyle(
//                         //       fontWeight: FontWeight.w800,
//                         //       color: Colors.black.withOpacity(0.4)))
//                       ],
//                     ),
//                   ),

//                   DottedLine(
//                     direction: Axis.vertical,
//                     lineLength: double.infinity,
//                     lineThickness: 1.0,
//                     dashLength: 1.0,
//                     dashColor: Colors.grey,
//                   ),
//                   SizedBox(
//                     width: 30,
//                   ),

//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Text(
//                         // 'Salary',
//                         // style: TextStyle(fontWeight: FontWeight.w800),
//                         // ),
//                         Text('Alone Hospital,near zen park',
//                             style: TextStyle
//                         (
//                           fontWeight: FontWeight.w400,
//                           fontFamily: 'PT Sans',
//                           fontSize: 13,
//                           color: Colors.black
//                         ),
//                           ),
//                         Text('Tue,Oct 25',
//                             style: TextStyle
//                         (
//                           fontWeight: FontWeight.w400,
//                           fontFamily: 'PT Sans',
//                           fontSize: 13,
//                           color: Colors.black
//                         ),
//                           ),
//                         Text('5pm-7pm',
//                            style: TextStyle
//                         (
//                           fontWeight: FontWeight.w400,
//                           fontFamily: 'PT Sans',
//                           fontSize: 13,
//                           color: Colors.black
//                         ),
//                         ),
//                         Text('\$25.12/hr',
//                           style: TextStyle
//                         (
//                           fontWeight: FontWeight.w400,
//                           fontFamily: 'PT Sans',
//                           fontSize: 13,
//                           color: Colors.black
//                         ),
//                       )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//       ),
//     ),

//      SizedBox(
//       height: 9,
//     ),
//     Divider(
//       color:Colors.grey,
//     ),

//     Padding(
//   padding: const EdgeInsets.only(left:22.0),
//   child:   Container(
  
//     width: double.infinity,
  
//     height: 22,
  
//     // color: Colors.amber,
//     child: Row(
//   crossAxisAlignment: CrossAxisAlignment.stretch,
//   children: <Widget>[
//     Expanded(
//       child: Container(
//         // color: Colors.red,
//         child: Row(
//           children: [
//             Container(
  
//           width: 14,
  
//           height: 15,
  
//           child: Image(image: AssetImage('assets/icons/green_clock.jpg')),
  
//         ),
//         //           Padding(
//         //   padding: const EdgeInsets.only(left:15.0),
//         //   child: Container(
//         //       height: 23,
//         //       // color: Colors.red,
//         //     child: Text('Clock In',
  
//         //     style: TextStyle
  
//         //     (
  
//         //       fontFamily: 'PT Sans',
  
//         //       fontWeight: FontWeight.w400,
  
//         //       fontSize: 14,
  
//         //       color: Appcolor.showing,
  
              
  
//         //     ),
  
//         //     ),
  
//         //   ),
//         // ),

//         Expanded
//         (
//           child: FittedBox(
//             fit:BoxFit.contain,
//             child: Padding(
//               padding: const EdgeInsets.only(left:15.0),
//               child: Text('Clock In',
  
//               style: TextStyle
  
//               (
  
//                 fontFamily: 'PT Sans',
  
//                 fontWeight: FontWeight.w400,
  
//                 fontSize: 14,
  
//                 color: Colors.grey,
  
                
  
//               ),
  
//               ),
//             ),
//           )
//         )
//           ],
//         ),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         // color: Colors.yellow,
//       ),
//     ),
//     Expanded(
//       child: Container(
//         // color: Colors.purple,
//       ),
//     ),
//     Expanded(
//       child: Container(
//         // color: Colors.black,
//       ),
//     ),
    
//      Expanded(
//        child: Container(
//         //  color: Colors.green,
//           child:  Container(
  
//             child: Center(
//               child: Text('5pm',
  
//               style: TextStyle
  
//               (
  
//                 fontFamily: 'PT Sans',
  
//                 fontWeight: FontWeight.w400,
  
//                 fontSize: 14,
  
//                 color: Colors.grey,
  
                
  
//               ),
  
//               ),
//             ),
  
//           ),
//        ),
//      ),
//   ],
// ),
  
//   ),
// ),

// Divider(
//       color:Colors.grey,
//     ),


//     Padding(
//   padding: const EdgeInsets.only(left:22.0),
//   child:   Container(
  
//     width: double.infinity,
  
//     height: 22,
  
//     // color: Colors.amber,
//     child: Row(
//   crossAxisAlignment: CrossAxisAlignment.stretch,
//   children: <Widget>[
//     Expanded(
//       child: Container(
//         // color: Colors.red,
//         child: Row(
//           children: [
//             Container(
  
//           width: 14,
  
//           height: 15,
  
//           child: Image(image: AssetImage('assets/icons/red_clock.jpg')),
  
//         ),
//         // Padding(
//         //   padding: const EdgeInsets.only(left:12.0),
//         //   child: Container(
//         //     height: 23,
//         //     // color: Colors.green,
  
//         //     child: Text('Clock out',
  
//         //     style: TextStyle
  
//         //     (
  
//         //       fontFamily: 'PT Sans',
  
//         //       fontWeight: FontWeight.w400,
  
//         //       fontSize: 14,
  
//         //       color: Appcolor.showing,
  
              
  
//         //     ),
  
//         //     ),
  
//         //   ),
//         // ),
//         Expanded
//         (
//           child: FittedBox(
//             fit:BoxFit.contain,
//             child: Padding(
//               padding: const EdgeInsets.only(left:15.0),
//               child: Text('Clock out',
  
//               style: TextStyle
  
//               (
  
//                 fontFamily: 'PT Sans',
  
//                 fontWeight: FontWeight.w400,
  
//                 fontSize: 14,
  
//                 color: Colors.grey,
  
                
  
//               ),
  
//               ),
//             ),
//           )
//         )


//           ],
//         ),
//       ),
//     ),
//     Expanded(
//       child: Container(
//         // color: Colors.yellow,
//       ),
//     ),
//     Expanded(
//       child: Container(
//         // color: Colors.purple,
//       ),
//     ),
//     Expanded(
//       child: Container(
//         // color: Colors.black,
//       ),
//     ),
    
//      Expanded(
//        child: Container(
//         //  color: Colors.green,
//           child:  Container(
  
//             child: Center(
//               child: Text('7pm',
  
//               style: TextStyle
  
//               (
  
//                 fontFamily: 'PT Sans',
  
//                 fontWeight: FontWeight.w400,
  
//                 fontSize: 14,
  
//                 color: Colors.grey,
  
                
  
//               ),
  
//               ),
//             ),
  
//           ),
//        ),
//      ),
//   ],
// ),
  
//   ),
// ),

// Divider(
//       color:Colors.grey,
//     ),


//                     // Padding(
//                     //   padding: const EdgeInsets.only(left:22.0),
//                     //   child:   Container(
                      
//                     //     width: double.infinity,
                      
//                     //     height: 22,
                      
//                     //     // color: Colors.amber,
//                     //     child: Row(
//                     //   crossAxisAlignment: CrossAxisAlignment.stretch,
//                     //   children: <Widget>[
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.red,
//                     //         child: Row(
//                     //           children: [
//                     //             Container(
                      
//                     //           width: 14,
                      
//                     //           height: 15,
                      
//                     //           child: Image(image: AssetImage('assets/icons/green_clock.jpg')),
                      
//                     //         ),
//                     //                   Padding(
//                     //           padding: const EdgeInsets.only(left:15.0),
//                     //           child: Container(
//                     //               height: 23,
//                     //               // color: Colors.red,
//                     //             child: Text('Clock In',
                      
//                     //             style: TextStyle
                      
//                     //             (
                      
//                     //               fontFamily: 'PT Sans',
                      
//                     //               fontWeight: FontWeight.w400,
                      
//                     //               fontSize: 14,
                      
//                     //               color: Colors.black,
                      
                                  
                      
//                     //             ),
                      
//                     //             ),
                      
//                     //           ),
//                     //         ),
//                     //           ],
//                     //         ),
//                     //       ),
//                     //     ),
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.yellow,
//                     //       ),
//                     //     ),
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.purple,
//                     //       ),
//                     //     ),
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.black,
//                     //       ),
//                     //     ),
                        
//                     //      Expanded(
//                     //        child: Container(
//                     //         //  color: Colors.green,
//                     //           child:  Container(
                      
//                     //             child: Center(
//                     //               child: Text('5pm',
                      
//                     //               style: TextStyle
                      
//                     //               (
                      
//                     //                 fontFamily: 'PT Sans',
                      
//                     //                 fontWeight: FontWeight.w400,
                      
//                     //                 fontSize: 14,
                      
//                     //                 color: Colors.black,
                      
                                    
                      
//                     //               ),
                      
//                     //               ),
//                     //             ),
                      
//                     //           ),
//                     //        ),
//                     //      ),
//                     //   ],
//                     // ),
                      
//                     //   ),
//                     // ),

//                     // Divider(
//                     //       color:Colors.grey,
//                     //     ),


//                     //     Padding(
//                     //   padding: const EdgeInsets.only(left:22.0),
//                     //   child:   Container(
                      
//                     //     width: double.infinity,
                      
//                     //     height: 22,
                      
//                     //     // color: Colors.amber,
//                     //     child: Row(
//                     //   crossAxisAlignment: CrossAxisAlignment.stretch,
//                     //   children: <Widget>[
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.red,
//                     //         child: Row(
//                     //           children: [
//                     //             Container(
                      
//                     //           width: 14,
                      
//                     //           height: 15,
                      
//                     //           child: Image(image: AssetImage('assets/icons/green_clock.jpg')),
                      
//                     //         ),
//                     //         Padding(
//                     //           padding: const EdgeInsets.only(left:12.0),
//                     //           child: Container(
//                     //             height: 23,
//                     //             // color: Colors.green,
                      
//                     //             child: Text('Clock out',
                      
//                     //             style: TextStyle
                      
//                     //             (
                      
//                     //               fontFamily: 'PT Sans',
                      
//                     //               fontWeight: FontWeight.w400,
                      
//                     //               fontSize: 14,
                      
//                     //               color: Colors.black,
                      
                                  
                      
//                     //             ),
                      
//                     //             ),
                      
//                     //           ),
//                     //         ),
//                     //           ],
//                     //         ),
//                     //       ),
//                     //     ),
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.yellow,
//                     //       ),
//                     //     ),
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.purple,
//                     //       ),
//                     //     ),
//                     //     Expanded(
//                     //       child: Container(
//                     //         // color: Colors.black,
//                     //       ),
//                     //     ),
                        
//                     //      Expanded(
//                     //        child: Container(
//                     //         //  color: Colors.green,
//                     //           child:  Container(
                      
//                     //             child: Center(
//                     //               child: Text('7pm',
                      
//                     //               style: TextStyle
                      
//                     //               (
                      
//                     //                 fontFamily: 'PT Sans',
                      
//                     //                 fontWeight: FontWeight.w400,
                      
//                     //                 fontSize: 14,
                      
//                     //                 color: Colors.black,
                      
                                    
                      
//                     //               ),
                      
//                     //               ),
//                     //             ),
                      
//                     //           ),
//                     //        ),
//                     //      ),
//                     //   ],
//                     // ),
                      
//                     //   ),
//                     // ),

//                     // Divider(
//                     //       color:Colors.grey,
//                     //     ),

//     Container(
//       height: 23,
//       width: double.infinity,
//       // color: Colors.red,
//       child: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
  
//           width: 14,
  
//           height: 15,
  
//           child: Image(image: AssetImage('assets/icons/Octagon_Warning.jpg')),
  
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left:12.0),
//           child: Container(

//             child: RichText
//             (
//               text: TextSpan(
//                 text: 'Feel Free to ',
//                 style: TextStyle(
//                   color: Colors.black, 
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: 'PT Sans'
//                   ),
//                   children: [
//                     TextSpan(
//                 text: 'Contact NurseConnect ',
//                 style: TextStyle(
//                   color: Colors.black, 
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: 'PT Sans'
//                   ),
//                     ),
//                     TextSpan(
//                 text: 'at any time',
//                 style: TextStyle(
//                   color: Colors.black, 
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: 'PT Sans'
//                   ),
//                     )

//                   ]
//               )
//             ),
  
//             // child: Text('Clock out',
  
//             // style: TextStyle
  
//             // (
  
//             //   fontFamily: 'PT Sans',
  
//             //   fontWeight: FontWeight.w400,
  
//             //   fontSize: 14,
  
//             //   color: Appcolor.timetext,
  
              
  
//             // ),
  
//             // ),
  
//           ),
//         ),
//           ],
//         ),
//       ),
//     ),

//     SizedBox(
//       height: 10,
//     ),
//             ],
//       ),
//       ),
//       GestureDetector(
//             onTap: (){
//                         print('clock out');
//                         //  Navigator.push(
//                         //     context,
//                         //     MaterialPageRoute(builder: (context) => const ClockOut()),
//                         //   );
//                       },
//       child: Padding(
//         padding: const EdgeInsets.only(left:15.0,right: 15),
//         child: Container(
//               width: double.infinity,
//               height: 50,
//               decoration: BoxDecoration
//                     (
//                       color: Colors.purple,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(15.0),
//                         bottomRight: Radius.circular(15.0)
//                       ),
//                     ),
//               child: Center
//               (
//                 child: Text('THIS SHIFT IS ACTIVE',
//                 style: TextStyle
//                 (
//                   fontFamily: 'PT Sans',
//                   fontWeight: FontWeight.w700,
//                   fontSize: 14,
//                   color: Colors.white,
                  
//                 ),
//                 )
//               ),
//         ),
//       ),
//     ),
//                 ],
//               ),

//               Align(
//             alignment: Alignment.topCenter,
//               child: SizedBox(
//               child: CircleAvatar(
//                   radius: 40.0,
//                   backgroundColor: Colors.white,
//                   child: CircleAvatar(
//                     child: Align(
//                       alignment: Alignment.bottomLeft,
                    
//                       child: Container
//                       (
//                         width: 43,
//                         height: 19,
//                         // color: Colors.blue,
//                          decoration: BoxDecoration(
//                                         color: Colors.grey,
//                                         borderRadius: BorderRadius.all(Radius.circular(50.0))
//                                       ),
//                         child: Center(
//                           child: Text('CNA',
//                           style: TextStyle(
//                             fontFamily: 'PT Sans',
//                             fontSize: 10,
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w700
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     radius: 40.0,
//                     backgroundImage: AssetImage(
//                       'assets/images/image 8.png'),
//                   ),
//                 ),
//               )
//             ),
//             ]
//       ),
//           ],
//         ),
//       ),
      
//     );
//   }


  
}