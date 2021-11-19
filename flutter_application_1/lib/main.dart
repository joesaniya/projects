import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Text('Hi!!Jenslin', style:TextStyle(fontSize:24, fontStyle:FontStyle.italic, fontWeight:FontWeight.w900, backgroundColor:Colors.red[50] )),
        
  
        ),
      
    );
  }
}