// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Welcome'),
          centerTitle:true,
        ),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('images/pic1.jpg',  
              width: 100.0,
              height: 240.0,
              fit: BoxFit.cover,),
            Image.asset('images/pic1.jpg',  
              width: 100.0,
              height: 240.0,
              fit: BoxFit.cover,),
            Image.asset('images/cat4.jpeg',  
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,),
            Image.asset('images/pic1.jpg',  
              width: 100.0,
              height: 140.0,
              fit: BoxFit.cover,)
          ],
          
        ),
      ),
      //   body: Container(
      //     color:Colors.grey[200],
      //     child:new Image.asset('assets/images/pic1.jpg', height: 300, width: 250, ),
      //     alignment: Alignment.center,
          
      // ),
      
    ));
  }
}