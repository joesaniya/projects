
import 'package:flutter/material.dart';
import 'package:nurse_app_ui/explore_page_screens/clock_out.dart';
import 'package:nurse_app_ui/theme/appcolor.dart';
import 'package:dotted_line/dotted_line.dart';

class TimeCard extends StatefulWidget {
  const TimeCard({ Key? key }) : super(key: key);

  @override
  State<TimeCard> createState() => _TimeCardState();
}

class _TimeCardState extends State<TimeCard> {
  @override
  Widget build(BuildContext context) {
    var querydata=MediaQuery.of(context);
    var screen_height=querydata.size.height;
    var container_height=screen_height/2;
    // var container_height=screen_height*0.77;

    final double circleRadius = 120.0;
    return Scaffold(
      backgroundColor: Colors.white,      
      appBar: PreferredSize
              (
                preferredSize: Size.fromHeight(50.0),
                child: AppBar(
                // backgroundColor: Colors.white.withOpacity(0.9),
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: Padding(
                  padding: const EdgeInsets.only(right:79.0),
                  child: Container
                  (
                    // height: 50.0,
                    height: container_height,
                    // color: Colors.amber,
                    child: Center(
                      child: Text('Time Card',
                      style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black
                      ),
                      ),
                    ),
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ), 
              ) ,
              
              body: Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.white,
    child: Stack(children: <Widget>[

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding:
              EdgeInsets.only(top: circleRadius / 2.0, ),  ///here we create space for the circle avatar to get ut of the box
              
              //elevation
              child: Container(
                // height: 500,
                // height: container_height,
                height: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  // color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                      offset: Offset(0.0, 5.0),
                    ),
                  ],
                ),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: circleRadius/2,),

                    Container(
                      height: 35,
                      width: 142,
                      decoration: BoxDecoration(
                                    color: Appcolor.secondary,
                                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                                  ),
                      child: Center(
                        child: Text('2 hr 30min',
                        style: TextStyle(fontFamily: 'PT Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                        ),
                      ),
                    ),
                    // Text('Maria Elliot', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34.0),),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('Earning \$25.02', 
                       style: TextStyle
                    (
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PT Sans',
                      fontSize: 13,
                      color: Appcolor.Citext
                    ),
                    ),
                    ),

                    SizedBox(
                      height: 30.0,
                    ),

                    
                    Material(
      // color: Colors.green,
      child: Center(
        child: Container(
          height: 90,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    'FACILTY',
                    style: TextStyle
                    (
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PT Sans',
                      fontSize: 17,
                      color: Colors.black
                    ),
                    ),
                    Text(
                    'DATE',
                     style: TextStyle
                    (
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PT Sans',
                      fontSize: 17,
                      color: Colors.black
                    ),
                    ),
                    Text(
                    'TIME',
                     style: TextStyle
                    (
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PT Sans',
                      fontSize: 17,
                      color: Colors.black
                    ),
                    ),
                    Text(
                    'RATE',
                     style: TextStyle
                    (
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PT Sans',
                      fontSize: 17,
                      color: Colors.black
                    ),
                    ),
                    // Text('\$30,309.09',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w800,
                    //       color: Colors.black.withOpacity(0.4)))
                  ],
                ),
              ),

              DottedLine(
                direction: Axis.vertical,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 1.0,
                dashColor: Appcolor.timetext,
              ),
              SizedBox(
                width: 30,
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    // 'Salary',
                    // style: TextStyle(fontWeight: FontWeight.w800),
                    // ),
                    Text('Alone Hospital,near zen park',
                        style: TextStyle
                    (
                      fontWeight: FontWeight.w400,
                      fontFamily: 'PT Sans',
                      fontSize: 13,
                      color: Appcolor.timetext
                    ),
                      ),
                    Text('Tue,Oct 25',
                        style: TextStyle
                    (
                      fontWeight: FontWeight.w400,
                      fontFamily: 'PT Sans',
                      fontSize: 13,
                      color: Appcolor.timetext
                    ),
                      ),
                    Text('5pm-7pm',
                       style: TextStyle
                    (
                      fontWeight: FontWeight.w400,
                      fontFamily: 'PT Sans',
                      fontSize: 13,
                      color: Appcolor.timetext
                    ),
                    ),
                    Text('\$25.12/hr',
                      style: TextStyle
                    (
                      fontWeight: FontWeight.w400,
                      fontFamily: 'PT Sans',
                      fontSize: 13,
                      color: Appcolor.timetext
                    ),
                  )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),


    SizedBox(
      height: 9,
    ),
    Divider(
      color:Colors.grey,
    ),


Padding(
  padding: const EdgeInsets.only(left:22.0),
  child:   Container(
  
    width: double.infinity,
  
    height: 22,
  
    // color: Colors.amber,
    child: Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Expanded(
      child: Container(
        // color: Colors.red,
        child: Row(
          children: [
            Container(
  
          width: 14,
  
          height: 15,
  
          child: Image(image: AssetImage('assets/icons/green_clock.jpg')),
  
        ),
                  Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: Container(
              height: 23,
              // color: Colors.red,
            child: Text('Clock In',
  
            style: TextStyle
  
            (
  
              fontFamily: 'PT Sans',
  
              fontWeight: FontWeight.w400,
  
              fontSize: 14,
  
              color: Appcolor.showing,
  
              
  
            ),
  
            ),
  
          ),
        ),
          ],
        ),
      ),
    ),
    Expanded(
      child: Container(
        // color: Colors.yellow,
      ),
    ),
    Expanded(
      child: Container(
        // color: Colors.purple,
      ),
    ),
    Expanded(
      child: Container(
        // color: Colors.black,
      ),
    ),
    
     Expanded(
       child: Container(
        //  color: Colors.green,
          child:  Container(
  
            child: Center(
              child: Text('5pm',
  
              style: TextStyle
  
              (
  
                fontFamily: 'PT Sans',
  
                fontWeight: FontWeight.w400,
  
                fontSize: 14,
  
                color: Appcolor.showing,
  
                
  
              ),
  
              ),
            ),
  
          ),
       ),
     ),
  ],
),
  
  ),
),

Divider(
      color:Colors.grey,
    ),


    Padding(
  padding: const EdgeInsets.only(left:22.0),
  child:   Container(
  
    width: double.infinity,
  
    height: 22,
  
    // color: Colors.amber,
    child: Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Expanded(
      child: Container(
        // color: Colors.red,
        child: Row(
          children: [
            Container(
  
          width: 14,
  
          height: 15,
  
          child: Image(image: AssetImage('assets/icons/green_clock.jpg')),
  
        ),
        Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: Container(
            height: 23,
            // color: Colors.green,
  
            child: Text('Clock out',
  
            style: TextStyle
  
            (
  
              fontFamily: 'PT Sans',
  
              fontWeight: FontWeight.w400,
  
              fontSize: 14,
  
              color: Appcolor.showing,
  
              
  
            ),
  
            ),
  
          ),
        ),
          ],
        ),
      ),
    ),
    Expanded(
      child: Container(
        // color: Colors.yellow,
      ),
    ),
    Expanded(
      child: Container(
        // color: Colors.purple,
      ),
    ),
    Expanded(
      child: Container(
        // color: Colors.black,
      ),
    ),
    
     Expanded(
       child: Container(
        //  color: Colors.green,
          child:  Container(
  
            child: Center(
              child: Text('7pm',
  
              style: TextStyle
  
              (
  
                fontFamily: 'PT Sans',
  
                fontWeight: FontWeight.w400,
  
                fontSize: 14,
  
                color: Appcolor.showing,
  
                
  
              ),
  
              ),
            ),
  
          ),
       ),
     ),
  ],
),
  
  ),
),

Divider(
      color:Colors.grey,
    ),

    Container(
      height: 23,
      width: double.infinity,
      // color: Colors.red,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
  
          width: 14,
  
          height: 15,
  
          child: Image(image: AssetImage('assets/icons/Octagon_Warning.jpg')),
  
        ),
        Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: Container(

            child: RichText
            (
              text: TextSpan(
                text: 'Feel Free to ',
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'PT Sans'
                  ),
                  children: [
                    TextSpan(
                text: 'Contact NurseConnect ',
                style: TextStyle(
                  color: Appcolor.secondary, 
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'PT Sans'
                  ),
                    ),
                    TextSpan(
                text: 'at any time',
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'PT Sans'
                  ),
                    )

                  ]
              )
            ),
  
            // child: Text('Clock out',
  
            // style: TextStyle
  
            // (
  
            //   fontFamily: 'PT Sans',
  
            //   fontWeight: FontWeight.w400,
  
            //   fontSize: 14,
  
            //   color: Appcolor.timetext,
  
              
  
            // ),
  
            // ),
  
          ),
        ),
          ],
        ),
      ),
    ),

    SizedBox(
      height: 10,
    ),

    GestureDetector(
        onTap: (){
                    print('clock out');
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ClockOut()),
                      );
                  },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration
              (
                color: Appcolor.secondary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)
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

                              


                  ],
                ),
                
              ),
            ),



           
            SizedBox(
            child: CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                child: Align(
                  alignment: Alignment.bottomLeft,
                
                  child: Container
                  (
                    width: 43,
                    height: 19,
                    // color: Colors.blue,
                     decoration: BoxDecoration(
                                    color: Appcolor.bg1ml,
                                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                                  ),
                    child: Center(
                      child: Text('CNA',
                      style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontSize: 10,
                        color: Colors.blue,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                    ),
                  ),
                ),
                radius: 40.0,
                backgroundImage: AssetImage(
                  'assets/images/image 8.png'),
              ),
            ),
            )
          ],
        ),
      ),
      
    ]
    ),
  ),
  
    );
  }
}