import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Welcome to Flutter'),
        // ),
        backgroundColor: Colors.blue[100],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [



                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(Icons.arrow_back,size: 30,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Delete Your Account',
                      style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900
                      ),
                      textAlign: TextAlign.justify,),
                    ),
                    Container(
                      width: 10.0,
                    ) 
                  ],),
                ),

                Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text('Step 1 of 2',style: TextStyle(fontSize: width*0.07,fontWeight: FontWeight.w500),),
                        ),
                      ),
                   
                      // Text('Step 1 of 2',style: TextStyle(fontSize: width*0.07,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  child: Container(
                    width: width*0.75,
                   // height: height*0.67,
                    
                    // width: 300,
                    // height: 360,
                    child:Padding(
                      padding: const EdgeInsets.only(top:15.0, ),
                      child: Column(children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          child: Text('Export Wallet',style: TextStyle(fontSize: width*0.06,fontWeight: FontWeight.w800,color: Colors. blue),
                          textAlign: TextAlign.left),
                        ),
                        Divider(
                          color: Colors.blue,
                          thickness: 5.0,
                          indent: 20.0,
                          endIndent: 20.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          child: Text('Would you like to export your Wallet?',style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w900),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[100],
                            radius: 40.0,
                            child: Icon(Icons.upload_file_outlined,size: 50,),
                          ),
                        ),
                        Container(
                          child: Column(children: [
                            Text('Why is this important?',style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w700),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Exporting this wallet will help you hold your credentionls despite leaving Entrustient Platform. You can further important this into any wallet is the SSI ecosystem',style: TextStyle(fontSize: width*0.04,fontWeight: FontWeight.w500),),
                            )
                          ],),
                        )
                        
                      ],),
                    )
                ),
                
               ),
                ],
                
                ),

              //   Padding(
              //     padding: const EdgeInsets.all(20.0),
              //     child: Card(
              //       elevation: 20,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(30),
              //       ),
              //     child: Container(
              //       width: width*0.75,
              //      // height: height*0.67,
                    
              //       // width: 300,
              //       // height: 360,
              //       child:Padding(
              //         padding: const EdgeInsets.only(top:15.0, ),
              //         child: Column(children: [
              //           Container(
              //             padding: EdgeInsets.all(20.0),
              //             child: Text('Export Wallet',style: TextStyle(fontSize: width*0.06,fontWeight: FontWeight.w800,color: Colors. blue),),
              //           ),
              //           Divider(
              //             color: Colors.blue,
              //             thickness: 5.0,
              //             indent: 20.0,
              //             endIndent: 20.0,
              //           ),
              //           Container(
              //             padding: EdgeInsets.all(20.0),
              //             child: Text('Would you like to export your Wallet?',style: TextStyle(fontSize: width*0.068,fontWeight: FontWeight.w600),),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.all(10.0),
              //             child: CircleAvatar(
              //               backgroundColor: Colors.blue[100],
              //               radius: 50.0,
              //               child: Icon(Icons.upload_file_outlined,size: 60,),
              //             ),
              //           ),
              //           Container(
              //             child: Column(children: [
              //               Text('Why is this important?',style: TextStyle(fontSize: width*0.059,fontWeight: FontWeight.w400),),
              //               Padding(
              //                 padding: const EdgeInsets.all(10.0),
              //                 child: Text('Exporting this wallet will help you hold your credentionls despite leaving Entrustient Platform. You can further important this into any wallet is the SSI ecosystem',style: TextStyle(fontSize: width*0.048,),),
              //               )
              //             ],),
              //           )
                        
              //         ],),
              //       )
              //   ),
                
              //  ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                  child: Text('Yes',style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Text('Skip',style: TextStyle(color: Colors.white),),
                        Icon(Icons.skip_next_outlined,color: Colors.white,),
                      ],
                    ),
                  onPressed: () {},
                ),
                
                //   RaisedButton(
                //     color: Color(0XFFFF0000),
                //     child: Row(
                //       children: <Widget>[
                //       Text('Play this song', style: TextStyle(color: Colors.white),),
                //       Icon(Icons.play_arrow, color: Colors.white,),
                //       ],
                //     ),
                // ),

                //   FlatButton(
                //   child: Text('Yes'),
                //   color: Colors.blueAccent,
                //   textColor: Colors.white,
                //   onPressed: () {},
                // ),
                
                ],
              )  
              ],
              
                
              ),
          ),
            
            
          ),
          
          
          
          
          
        ),
        
  
      

    );
  }
}

