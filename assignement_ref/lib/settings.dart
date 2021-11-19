import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar
        (
          title: Text('Settings'),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          alignment: Alignment.center,
          child: Text('Settings Page',style: TextStyle(fontSize: 23),),
          
        ),
      ),
    );
  }
}
