import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 10.0,
          title: Text('flutter'),
          centerTitle: true,
        ),
       body:Center(
       child: Container(
         height: 500,
         width: 300,
         color: Colors.purple[200],
         child: Stack(
           alignment: Alignment.topRight,
           children: [
             Container(
               height: 250,
               width:250,
               color: Colors.pinkAccent,
             ),
             Container(
               height: 150,
               width:100,
               color: Colors.greenAccent[100],
             ),
           ],
         ),

       ),
       ),
      ),
      
      
    );
  }
}

