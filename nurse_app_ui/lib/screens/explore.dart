import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurse_app_ui/explore_page_screens/clock_in.dart';
import 'package:nurse_app_ui/modal/job.dart';
import 'package:nurse_app_ui/theme/appcolor.dart';

class Explore extends StatefulWidget {
  const Explore({ Key? key }) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  List<Job> jobs = getJobs();

  List<Widget> buildLastJobs(){
    List<Widget> list = [];
    for (var i = jobs.length - 1; i > -1; i--) {
      list.add(buildLastJob(jobs[i]));
    }
    return list;
  }

  Widget buildLastJob(Job job){
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                // color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              // padding: EdgeInsets.all(10),
              padding: EdgeInsets.only(top: 10.0),
              margin: EdgeInsets.only(bottom: 16),
              child: Column(children: [
                // Row()
                Row(
                children: [
      
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              // width: 371,
                              // height: 21,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.045,
                              // color: Colors.amber,
                              child: Row(
                                children: [
                                  Container(
                                    // width: 271,
                                    // height: 21,
                              //       width: MediaQuery.of(context).size.width,
                              //  height: MediaQuery.of(context).size.height*0.46,
                                    // color: Colors.red,
                                    child:Row(
                                      children: [
                                        Text(
                                                job.role1,
                                                style: TextStyle
                                            (
                                              fontFamily: 'PT Sans',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                              // color: Colors.black,
                                              color: Appcolor.showing
                                              
                                            ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                                Container(
                                                     width: 87,
                                                     height: 21,
                                                      child: Container(
                                                      child: job.trust=="Guaranteed"?
                                                  
                                                      Container
                                                      (
                                                        
                                                        width: 50,
                                                        height:19,
                                                        decoration: BoxDecoration(
                                  color: Appcolor.guaranteecolor,
                                  borderRadius: BorderRadius.all(Radius.circular(15.0))
                                ),
                                child: Center(
                                  child: Text(
                                                    job.trust,
                                                    style: TextStyle
                                                      (
                                                        fontFamily: 'PT Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 10,
                                                        color: Colors.white,
                                                        
                                                      ),
                                                  ),
                                ),
                                                  //         
                                                      )
                                                :
                                                  Container()
                                              ),
                                            ),
                                              
                                      ],
                                    )
                                  ),
                          //         Container(
                          //              width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height*0.045,
                          // // width: 200,
                          // // height: 21,
                          // color: Colors.pink,
                          // child: Text('hi'),
                          //         ),
                                    Container(
                                    // width: 100,
                                    // height: 21,
                                     width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.045,
                                    // color: Colors.blue,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                                  Text(
                                                r"$" + job.hramt + "/hr",
                                                 style: TextStyle
                                            (
                                              fontFamily: 'PT Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              // color: Colors.black,
                                              color: Appcolor.headinghr
                                              
                                            ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        
                        
                        Row(
                          children: [
                              Container(
                              width: 371,
                              height: 21,
                              // color: Colors.amber,
                              child: Row(
                                children: [
                                  Container(
                                    width: 271,
                                    height: 21,
                                    // color: Colors.red,
                                    child:Row(
                                      children: [
                                        Text(
                                                job.role2,
                                                style: TextStyle
                                            (
                                              fontFamily: 'PT Sans',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 13,
                                              color: Colors.grey,
                                              
                                            ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                                      ],
                                    )
                                  ),
                                    Container(
                                    width: 100,
                                    height: 21,
                                    // color: Colors.blue,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                                  Text(
                    r"$" + job.totalamt ,
                     style: TextStyle
                                            (
                                              fontFamily: 'PT Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Appcolor.secondary,
                                              
                                            ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
      
                        SizedBox(
                          height: 9,
                        ),
      
                        Container(
                          width: 445,
                          height: 21,
                          // color: Colors.amber,
                          child:  Container(
                                width: 250,
                                height: 21,
                                // color: Colors.pink,
                                child: Row(
                                  children: [
                                    Image(image: AssetImage('assets/icons/Group 339.png')),
                                  SizedBox(
                                    width: 8,
                                  ),
                                    Text(
                                    job.location,
                                    style: TextStyle
                                                      (
                                                        fontFamily: 'PT Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 12,
                                                        // color: Colors.black,
                                                        color: Appcolor.headinghr
                                                        // height: 2
                                                      ),
                        ),
                                  ],
                                ),
                              )
                        ),
      
                        Row(
                          children: [
                            Container(
                              width: 256,
                              height: 21,
                              // color: Colors.amber,
                              child: Row(
                                children: [
                                  Image(image: AssetImage('assets/icons/grop-cal.png')),
                                  SizedBox(
                                    width: 8,
                                  ),
                                    Text(
                                    job.date,
                                    style: TextStyle
                                                      (
                                                        fontFamily: 'PT Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 12,
                                                        // color: Colors.black,
                                                        color: Appcolor.headinghr
                                                        // height: 2
                                                      ),
                        ),
                        SizedBox(
                         width: 20,
                       ),
                       Text(
                          job.time,
                           style: TextStyle
                                            (
                                              fontFamily: 'PT Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              // color: Colors.black,
                                              color: Appcolor.headinghr
                                              // height: 2
                                            ),
                        ),
                                ],
                              ),
                            ),
                             Container(
                              width: 115,
                              height: 27,
                              // color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                      Container(
                            decoration: BoxDecoration(
                              color: Appcolor.secondary,
                              borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                            width: 100,
                            height: 37,
                            child: Center(child: Text('APPLY',
                            style: TextStyle
                                          (
                                            fontFamily: 'PT Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Colors.white,
                                            
                                          ),
                            ),),)
                                ],
                              ),
                            )
                          ],
                        )
      
                      ],
                    )
                  ),
                ],
              ),
              ],)


              // Row(
              //   children: [
      
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Row(
              //             children: [
              //               Container(
              //                 width: 371,
              //                 height: 21,
              //                 // color: Colors.amber,
              //                 child: Row(
              //                   children: [
              //                     Container(
              //                       width: 271,
              //                       height: 21,
              //                       // color: Colors.red,
              //                       child:Row(
              //                         children: [
              //                           Text(
              //                                   job.role1,
              //                                   style: TextStyle
              //                               (
              //                                 fontFamily: 'PT Sans',
              //                                 fontWeight: FontWeight.w900,
              //                                 fontSize: 18,
              //                                 // color: Colors.black,
              //                                 color: Appcolor.showing
                                              
              //                               ),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //       Container(
              //            width: 87,
              //            height: 21,
              //             child: Container(
              //             child: job.trust=="Guaranteed"?
                      
              //             Container
              //             (
                            
              //               width: 50,
              //               height:19,
              //               decoration: BoxDecoration(
              //                     color: Appcolor.guaranteecolor,
              //                     borderRadius: BorderRadius.all(Radius.circular(15.0))
              //                   ),
              //                   child: Center(
              //                     child: Text(
              //           job.trust,
              //           style: TextStyle
              //                                         (
              //                                           fontFamily: 'PT Sans',
              //                                           fontWeight: FontWeight.w700,
              //                                           fontSize: 10,
              //                                           color: Colors.white,
                                                        
              //                                         ),
              //         ),
              //                   ),
              //         //         
              //             )
              //       :
              //         Container()
              //     ),
              //                               ),
                  
              //                         ],
              //                       )
              //                     ),
              //                       Container(
              //                       width: 100,
              //                       height: 21,
              //                       // color: Colors.blue,
              //                       child: Row(
              //                         mainAxisAlignment: MainAxisAlignment.end,
              //                         children: [
              //                                     Text(
              //       r"$" + job.hramt + "/hr",
              //        style: TextStyle
              //                               (
              //                                 fontFamily: 'PT Sans',
              //                                 fontWeight: FontWeight.w700,
              //                                 fontSize: 18,
              //                                 // color: Colors.black,
              //                                 color: Appcolor.headinghr
                                              
              //                               ),
              //                           )
              //                         ],
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
                        
                        
              //           Row(
              //             children: [
              //                 Container(
              //                 width: 371,
              //                 height: 21,
              //                 // color: Colors.amber,
              //                 child: Row(
              //                   children: [
              //                     Container(
              //                       width: 271,
              //                       height: 21,
              //                       // color: Colors.red,
              //                       child:Row(
              //                         children: [
              //                           Text(
              //                                   job.role2,
              //                                   style: TextStyle
              //                               (
              //                                 fontFamily: 'PT Sans',
              //                                 fontWeight: FontWeight.w900,
              //                                 fontSize: 13,
              //                                 color: Colors.grey,
                                              
              //                               ),
              //     ),
              //     SizedBox(
              //       width: 30,
              //     ),
              //                         ],
              //                       )
              //                     ),
              //                       Container(
              //                       width: 100,
              //                       height: 21,
              //                       // color: Colors.blue,
              //                       child: Row(
              //                         mainAxisAlignment: MainAxisAlignment.end,
              //                         children: [
              //                                     Text(
              //       r"$" + job.totalamt ,
              //        style: TextStyle
              //                               (
              //                                 fontFamily: 'PT Sans',
              //                                 fontWeight: FontWeight.w700,
              //                                 fontSize: 18,
              //                                 color: Appcolor.secondary,
                                              
              //                               ),
              //                           )
              //                         ],
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
      
              //           SizedBox(
              //             height: 9,
              //           ),
      
              //           Container(
              //             width: 445,
              //             height: 21,
              //             // color: Colors.amber,
              //             child:  Container(
              //                   width: 250,
              //                   height: 21,
              //                   // color: Colors.pink,
              //                   child: Row(
              //                     children: [
              //                       Image(image: AssetImage('assets/icons/Group 339.png')),
              //                     SizedBox(
              //                       width: 8,
              //                     ),
              //                       Text(
              //                       job.location,
              //                       style: TextStyle
              //                                         (
              //                                           fontFamily: 'PT Sans',
              //                                           fontWeight: FontWeight.w700,
              //                                           fontSize: 12,
              //                                           // color: Colors.black,
              //                                           color: Appcolor.headinghr
              //                                           // height: 2
              //                                         ),
              //           ),
              //                     ],
              //                   ),
              //                 )
              //           ),
      
              //           Row(
              //             children: [
              //               Container(
              //                 width: 256,
              //                 height: 21,
              //                 // color: Colors.amber,
              //                 child: Row(
              //                   children: [
              //                     Image(image: AssetImage('assets/icons/grop-cal.png')),
              //                     SizedBox(
              //                       width: 8,
              //                     ),
              //                       Text(
              //                       job.date,
              //                       style: TextStyle
              //                                         (
              //                                           fontFamily: 'PT Sans',
              //                                           fontWeight: FontWeight.w700,
              //                                           fontSize: 12,
              //                                           // color: Colors.black,
              //                                           color: Appcolor.headinghr
              //                                           // height: 2
              //                                         ),
              //           ),
              //           SizedBox(
              //            width: 20,
              //          ),
              //          Text(
              //             job.time,
              //              style: TextStyle
              //                               (
              //                                 fontFamily: 'PT Sans',
              //                                 fontWeight: FontWeight.w700,
              //                                 fontSize: 12,
              //                                 // color: Colors.black,
              //                                 color: Appcolor.headinghr
              //                                 // height: 2
              //                               ),
              //           ),
              //                   ],
              //                 ),
              //               ),
              //                Container(
              //                 width: 115,
              //                 height: 27,
              //                 // color: Colors.green,
              //                 child: Row(
              //                   mainAxisAlignment: MainAxisAlignment.end,
              //                   children: [
              //                         Container(
              //               decoration: BoxDecoration(
              //                 color: Appcolor.secondary,
              //                 borderRadius: BorderRadius.all(Radius.circular(50.0))
              //               ),
              //               width: 100,
              //               height: 37,
              //               child: Center(child: Text('APPLY',
              //               style: TextStyle
              //                             (
              //                               fontFamily: 'PT Sans',
              //                               fontWeight: FontWeight.w700,
              //                               fontSize: 15,
              //                               color: Colors.white,
                                            
              //                             ),
              //               ),),)
              //                   ],
              //                 ),
              //               )
              //             ],
              //           )
      
              //         ],
              //       )
              //     ),
              //   ],
              // ),
            ),
            
          ),
           Padding(
                                  padding: const EdgeInsets.only(right:10.0,left: 9.0),
                                  child: Divider(
                                    height: 0.0,
                                    color: Colors.grey,
                                    
                                  ),
                                ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
double screenHeight = MediaQuery.of(context).size.height;
double screenWidth = MediaQuery.of(context).size.width;
  return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Image.asset('assets/icons/Menu_Alt_03.png'),
          titleSpacing: 0,
          title: Container
                 (
                   height: 31,
                   width: 141,
                  
                  

                   decoration: BoxDecoration(
                     image: DecorationImage
                     (
                       image: AssetImage('assets/images/logo.jpeg')
                     )
                   ),
                 ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top:20.0,),
              child: Container(child: Text('Filter',style: TextStyle(fontFamily: 'PT Sans',fontSize: 14,color: Appcolor.secondary,fontWeight: FontWeight.w700),)),
            ),
            Image.asset('assets/icons/Icon.png'),

          ],
        ),

        body:SingleChildScrollView(
          child: Container(
            
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(6),
              // child: RaisedButton(
              //   onPressed: (){},
              //     child: Text("I'm a responsive button!",
              //         style: Theme.of(context).textTheme.headline5,
              //         textAlign: TextAlign.center)),
              child: Column(
                children: [
                   Padding(
                 padding: const EdgeInsets.only(left:3.0,right: 5.0),
                 child: SingleChildScrollView(
                   child: Column(
                     children: 
                    [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top:10.0),
                             child: Container(
                               width: MediaQuery.of(context).size.width,
                               height:180,
                              //  color: Colors.red,
                                child: Material(
                                  borderRadius: BorderRadius.all(
                                  Radius.circular(20.0)
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                               height: MediaQuery.of(context).size.height*0.226,
                                decoration: BoxDecoration
                                (
                                  
                                  color: Colors.white,
                                  // color: Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0)
                                  ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1.5,
                                    blurRadius:4,
                                    offset: Offset(0,3)
                                  )
                                ]
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:10.0,left: 10.0,right: 9.0),
                                          // padding: EdgeInsets.only
                                          // (
                                          //   top:MediaQuery.of(context).size.height/90,
                                          //   left:MediaQuery.of(context).size.width/90,
                                          //   right:MediaQuery.of(context).size.width/100
                                          // ),
                                          child: Text
                                              (
                                                'Current Shifts',
                                                  style: TextStyle
                                                  (
                                                    fontFamily: 'PT Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 18,
                                                    // color: Colors.black,
                                                    color: Appcolor.showing
                                                    
                                                  ),
                                              ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                                   Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                            width: 247,
                                            height: 30,
                                                child: Text
                                              (
                                                'Brightview Senior Living',
                                                  style: TextStyle
                                                  (
                                                    fontFamily: 'PT Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    // color: Colors.black,
                                                    color: Appcolor.showing
                                                    
                                                  ),
                                              ),
                                          ),
                                    ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                        flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:10.0),
                                      child: Container(
                                        height: 14,
                                        width: 39,
                                           decoration: BoxDecoration
                                            (
                                              
                                              color: Appcolor.bg1ml,
                                              borderRadius: BorderRadius.all(Radius.circular(4.0))
                                            ),
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text('+1 ml',style: TextStyle
                                                        (
                                                          fontFamily: 'PT Sans',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 11,
                                                          color: Colors.blue,
                                                          
                                                        ),),
                                        ),
                                      ),
                                    ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
   
          ),
        ),
   ],
         ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:10.0,right: 10.0),
                                      child: Container(
                                        width: 445,
                                        height: 32,
                                        // color: Colors.amber,

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 14,
                                                    height: 15,
                                              
                                              
                                              
                                              child: Image(image: AssetImage('assets/icons/Group 339.png')),
                                              
                                                  ),
                                                  
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:9.83),
                                                    child: Container(
                                                      child: Text('Annapolis 4.3 Mi',
                                                      style: TextStyle
                                                      (
                                                        fontFamily: 'PT Sans',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                        
                                                      ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:8.0),
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                    width: 14,
                                                    height: 15,
                                              
                                              
                                              
                                              
                                              child: Image(image: AssetImage('assets/icons/grop-cal.png')),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right:10.0),
                                                    child: Container(
                                                      width: 50,
                                                      height: 22,
                                                      child: Center(
                                                        child: Text('Jul 29',
                                                        style: TextStyle
                                                        (
                                                          fontFamily: 'PT Sans',
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          
                                                        ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right:30.0),
                                                    child: Container(
                                                        width: 50,
                                                        height: 22,
                                                        child: Center(
                                                          child: Text('3pm-11pm',
                                                          style: TextStyle
                                                          (
                                                            fontFamily: 'PT Sans',
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 12,
                                                            color: Colors.black,
                                                            
                                                          ),
                                                          ),
                                                        ),
                                                      ),
                                                  ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                                 Padding(
                                      padding: const EdgeInsets.only(right:10.0,left: 9.0),
                                      child: Divider(
                                        height: 0.0,
                                        color: Colors.grey,
                                        
                                      ),
                                    ),
      
                                    Padding(
              padding: const EdgeInsets.only(top:20.0,left: 9.83,right: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      
                      Container
                      (
                               width: 14,
                                height: 15,
                              
                              
                              
                              
                              child: Image(image: AssetImage('assets/icons/Calendar_Check.png')),
                              ),
                      SizedBox(
                              width: 6.0,
                      ),
                      Text('Jul 29',
                                style: TextStyle
                                 (
                                    fontFamily: 'PT Sans',
                                    fontWeight: FontWeight.w700,
                                     fontSize: 12,
                                     color: Colors.black,
                                     
                                   ),
                                ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 100.0,),
                      Container
                      (
                               width: 14,
                                height: 15,
                              
                              child: Image(image: AssetImage('assets/icons/Clock.png')),
                              ),
                      SizedBox(
                              width: 6.0,
                      ),
                      Text('3pm-11pm',
                                style: TextStyle
                                 (
                                    fontFamily: 'PT Sans',
                                    fontWeight: FontWeight.w700,
                                     fontSize: 12,
                                     color: Colors.black,
                                     
                                   ),
                                ),
                    ],
                  ),
                    Row(
                    children: [
                      SizedBox(width: 50.0,),
                      
                
                RichText(
        text: TextSpan(
            text: r"$" + 
                  '15.00',
           style: TextStyle
                                                (
                                                  fontFamily: 'PT Sans',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Appcolor.secondary,
                                                  
                                                  
                                                ),
            children: <TextSpan>[
              TextSpan(text: ' /hr',
                  style: TextStyle
                                                (
                                                  fontFamily: 'PT Sans',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  
                                                ),
              )
            ]
        ),
      ),
                    ],
                  )
                ],
              ),
            ),
            
                                  ],
                                ),
                                ),
                               ),
                             ),
                           ),
                           Padding(
                  padding: const EdgeInsets.only(left:0.0,right: 0.0),
                  child: GestureDetector(
                    onTap: (){
                      print('This shift is active clicked');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ClockIn()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.07,
                      // // width: 345,
                      // width: 500,
                      // height: 42,
                      //   // width: MediaQuery.of(context).size.height,
                      //   // height: MediaQuery.of(context).size.height*0.01,
                      decoration: BoxDecoration
                            (
                              color: Appcolor.secondary,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)
                              ),
                            ),
                      child: Center
                      (
                        child: Text('THIS SHIFT IS ACTIVE',
                        style: TextStyle
                        (
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.white,
                          
                        ),
                        )
                      ),
                    ),
                  ),
             
                ),
                         ],
                       ),


                       
                       SizedBox(
                  height: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [  Row(children: [Text("500",
                              style: TextStyle
                              (
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Appcolor.secondary,
                                decoration: TextDecoration.underline,
                                // height: 25.5
                                // height: 2
                              ),), SizedBox(width: 10,),  Text('Shifts within 40 miles',
                              style: TextStyle
                              (
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.black,
                                // height: 2
                              ),
                              ),
                              ],),Text('Showing 24 facilities',
                              style: TextStyle
                              (
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  // color: Colors.black,
                                  color: Appcolor.showing
                                  // height: 2
                              ),
                              ),],),
               

                    //    Container(
                    //     //  color: Colors.green,
                    //     //  width: MediaQuery.of(context).size.width,
                    //      height: MediaQuery.of(context).size.height*0.150,
                    //     // height: MediaQuery.of(context).size*,
                    //     // width: 345,
                    //     // height: 83,
                    //      child: Column(
                    //        children: [
                    //          Container(
                    //             width: MediaQuery.of(context).size.width,
                    //             height:30,
                    //             // color: Colors.pink,
                    //             child: Row(
                    //               children: [
                    //                 Text('500',
                    //           style: TextStyle
                    //           (
                    //             fontFamily: 'PT Sans',
                    //             fontWeight: FontWeight.w600,
                    //             fontSize: 17,
                    //             color: Appcolor.secondary,
                    //             decoration: TextDecoration.underline,
                    //             // height: 25.5
                    //             // height: 2
                    //           ),
                    //           ),
                    //           SizedBox(
                    //             width: 8.0,
                    //           ),
                    //             Text('Shifts within 40 miles',
                    //           style: TextStyle
                    //           (
                    //             fontFamily: 'PT Sans',
                    //             fontWeight: FontWeight.w600,
                    //             fontSize: 17,
                    //             color: Colors.black,
                    //             // height: 2
                    //           ),
                    //           ),
                    //               ],
                    //             ),
                    //          ),
                    //         Container(
                    //           // color: Colors.blue,
                    //           width: MediaQuery.of(context).size.width,
                    //             height: MediaQuery.of(context).size.height*0.025,
                    //             // height: MediaQuery.of(context).size.height*1,
                    //             child:  Padding(
                    //               padding: const EdgeInsets.only(top:8.0),
                    //               child: Text('Showing 24 facilities',
                    //           style: TextStyle
                    //           (
                    //               fontFamily: 'PT Sans',
                    //               fontWeight: FontWeight.w400,
                    //               fontSize: 12,
                    //               // color: Colors.black,
                    //               color: Appcolor.showing
                    //               // height: 2
                    //           ),
                    //           ),
                    //             ),
                    //         ),
                             
                    //        ],
                    //      ),
                    // //      child: Material(
                    // //         borderRadius: BorderRadius.all(
                    // //   Radius.circular(20.0)
                    // // ),
                    // //      ),
                    //     //  child: Column(children: [],),
                    //    ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical:8.0),
                         child: Container(
                           width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.045,
                          color: Colors.amber,
                           child: Text('Recommended for you:',
                                  style: TextStyle
                                  (
                                    fontFamily: 'PT Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    // color: Colors.black,
                                    color: Appcolor.showing
                                    // height: 2
                                  ),
                                  ),
                         ),
                       ),
                    
                     SingleChildScrollView(
                       child: Column(
                         children: buildLastJobs(),
                       ),
                     ),
                    
                    ]
                   ),
                 ),
               ),
                ],
              )
              ,
            ),
        ),

      ),
    );
  }
}