// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
            height:300,
            width:200,
            color:Colors.red,
          );
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal[100],//change background
          appBar: AppBar(title: Text('Welcome',style:TextStyle(fontWeight:FontWeight.bold, color: Colors.yellow),) , centerTitle: true, backgroundColor: Colors.teal,),//appbar title changes
          body:SafeArea(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                margin:EdgeInsets.all(10.0,),
                color:Colors.red[50],
                width:100,
                height:100,
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/pic1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin:EdgeInsets.all(10.0,),
                width:100,
                height:100,
                color:Colors.red[50],
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/pic2.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin:EdgeInsets.all(10.0,),
                width:100,
                height:100,
                color:Colors.red[50],
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/pic3.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              ),
            
            ],)
            // child:Container(
            //   width:200,
            //   height:200,
            //   color:Colors.yellow[100],
            //   margin: EdgeInsetsDirectional.all(30.0),
            //   child:Text('welcome',style: TextStyle(fontWeight:FontWeight.bold,fontSize:15, color:Colors.green),),
            //   padding: EdgeInsets.all(70.0),
            // )//single layout container
            )

      // body: Column(
      //   children: [
      //     SizedBox(height:10),
      //     Padding(
      //       padding: const EdgeInsets.only(left:8.0),
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         decoration: BoxDecoration(
      //            border: Border(
      //             top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
      //             bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
      //             ),
      //            color: Colors.white,
      //          ),

      //         child: Padding(
      //           padding: const EdgeInsets.fromLTRB(8.0, 4.0, 3.0, 6.0),
      //           child: Image.asset(
      //             'assets/images/pic1.jpg',
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
          
      //     // ignore: unnecessary_new
      //     Container(
      //  //   height: 200.0,
      //     color: Colors.transparent,
      //     child:  Container(
      //       decoration:BoxDecoration(
      //         //  border: Border.all(
      //         //   color: Colors.red,
      //         //   width: 4,
      //         // ),
      //       //  color: Colors.green.shade100,
      //         //shape: BoxShape.circle,
      //        ),
      //       child: Padding(
      //         padding: const EdgeInsets.fromLTRB(8.0, 4.0, 3.0, 6.0),
              
      //       child: CircleAvatar(
      //         radius: 50.0,
              

      //         backgroundImage: AssetImage( 'assets/images/pic3.jpeg'),
      //         child:Text('hi',style:TextStyle(color: Colors.white)),
      //         // child: Image.asset(
      //         //       'assets/images/pic3.jpeg',
      //         //       fit: BoxFit.contain,
      //         //     ),
      //       ),
      //    ),
      //   ),
      //   ),
      //   SizedBox(
      //       height: 10,
      //     ),

          
      //     Container(
      //       height: 200,
      //       width: 200,
      //       decoration: BoxDecoration(
      //          borderRadius: BorderRadius.all(
      //             Radius.circular(10),//this is will be set the cur for the border edge
      //           ),
      //         border: Border.all(
      //           color: Colors.red,
      //           width: 4,
      //         ),
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.fromLTRB(8.0, 4.0, 3.0, 6.0),
      //         child: Image.asset(
      //           'assets/images/pic2.jpeg',
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     SizedBox(
      //       height:10,
      //     ),
         
      //    Container(
      //      width:200,
      //      height:200,
      //      color:Colors.pink,
      //      padding:EdgeInsets.all(70.0),
      //      child:Text('welcome',style:TextStyle(color:Colors.white),)
          
           

      //    ),//single layout
      //   ],
      // ),
    )
    );
    // Column(
    //     children: <Widget>[
    //       Image.asset(
    //         'assets/images/pic1.jpg',
    //       ),
    //       Text('Welcome',style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),)

    //     ],
    //   ),
  }
}
