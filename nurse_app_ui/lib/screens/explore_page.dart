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
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 325,
                            height: 21,
                            
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 174,
                                      height: 21,
                                      
                                      child: Row(
                                        children: [
                                          Container(
                                            
                                            width: 37,
                                            height: 21,
                                            child: Text(
                                              job.role1,
                                              style: TextStyle
                                          (
                                            fontFamily: 'PT Sans',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 18,
                                            color: Colors.black,
                                            
                                          ),
                ),
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
                                                        child: Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15.0),
                                                              child: Container(
                                                                width: 10,
                                                                child: Image(image: AssetImage('assets/icons/guar_icon.jpeg',),
                                                                color: Colors.white,),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:5.0),
                                                              child: Container(
                                                                width: 40,
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
                                                            )
                                                          ],
                                                        ),
                                                  )
                                       :Container()),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Container(
                                      width: 71,
                                      height: 21,
                                      
                                      child:  Text(
                  r"$" + job.hramt + "/hr",
                   style: TextStyle
                                          (
                                            fontFamily: 'PT Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Colors.black,
                                            
                                          ),
                                      )
                                    )
                                  ],
                                )
                              ],
                            ),

                          )
                        ],
                      ),
                      
                      Row(
                        children: [
                          Container(
                            width: 325,
                            height: 21,
                            
                            child: Row(
                              children: [
                                Container(
                                  width: 174,
                                  height: 17,
                                  
                                  child:Text(
                                    job.role2,
                                    style: TextStyle
                                                            (
                                                              fontFamily: 'PT Sans',
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 14,
                                                              color: Colors.grey,
                                                              
                                                            ),
                                  ),
                                ),
                                SizedBox(
                                  width: 92,
                                ),
                                Container(
                                  width: 59,
                                  height: 21,
                                  
                                  child: Text(
                  r"$" + job.totalamt,
                   style: TextStyle
                                          (
                                            fontFamily: 'PT Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Appcolor.secondary,
                                            
                                          ),
                                )
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Container(
                         width: 14,
                         height: 15,
                      child: Image(image: AssetImage('assets/icons/clock_box.jpeg')),
                     ),
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
                                            color: Colors.black,
                                            
                                          ),
                      ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Container(
                         width: 14,
                         height: 15,
                      child: Image(image: AssetImage('assets/icons/Calendar_Check.png')),
                     ),
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
                                            color: Colors.black,
                                            
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
                                            color: Colors.black,
                                            
                                          ),
                      ),
                      SizedBox(width: 113.0,),
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
                          )),
                        )
                        ],
                      )


                    ],
                  )
                ),
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
      ],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:10.0,left:15.0,right: 15.0),
                  child: Material(
                    
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0)
                    ),
                    child: Container(
                      
                      height: 200,
                      width: 345,
                      decoration: BoxDecoration
                          (
                            
                            color: Colors.white,
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
                                    child: Container(
                                      width: 300,
                                      height: 23,
                                          child: Text
                                      (
                                        'Current Shifts',
                                          style: TextStyle
                                          (
                                            fontFamily: 'PT Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Colors.black,
                                            
                                          ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:10.0,top: 19.0,right: 88.0),
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
                                              color: Colors.black,
                                              
                                            ),
                                        ),
                                    ),
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
                                  width: 326,
                                  height: 32,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 14,
                                              height: 15,
                                        
                                        
                                        
                                        child: Image(image: AssetImage('assets/icons/clock_box.jpeg')),
                                        
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
                                        
                                        
                                        
                                        
                                        child: Image(image: AssetImage('assets/icons/Calendar_Check.png')),
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
                      SizedBox(width: 70.0,),
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
                      SizedBox(width: 69.0,),
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      SizedBox(
                        width: 0.0,
                      ),
                
                
                
                
                
                
                
                
                
                
                
                
                
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
                GestureDetector(
                    onTap: (){
                    print('Shift is Active');
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ClockIn()),
                      );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0),
                    child: Container(
                      width: 345,
                      height: 42,
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
                SizedBox(
                  height: 8.0,
                ),
                Column(
                  children: [
                    Container(
                      width: 321,
                      height: 20,
                      color: Colors.amber,
                    )
                  ],
                ),
                

                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 5.0),
                  child: SizedBox(
                    width: 345,
                    height: 23,
                    child: Text('Recommended for you:',
                                style: TextStyle
                                (
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.black,
                                  
                                ),
                                ),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.only(left:10.0,right: 5.0),
                 child: SingleChildScrollView(
                   child: Column(
                     children: buildLastJobs(),
                   ),
                 ),
               ),
            
              ],
            )
          ],
        ),
      ),
        
      ),
    );
  }
}