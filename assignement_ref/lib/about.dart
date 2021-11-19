import 'package:flutter/material.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar
        (
          title: Text('About'),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          alignment: Alignment.center,
          child: Text('About Page',style: TextStyle(fontSize: 23),),
          
        ),
      ),
    );
  }
}
