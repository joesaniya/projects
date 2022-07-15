import 'package:flutter/material.dart';

class MyShifts extends StatefulWidget {
  const MyShifts({ Key? key }) : super(key: key);

  @override
  State<MyShifts> createState() => _MyShiftsState();
}

class _MyShiftsState extends State<MyShifts> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Center(
        child:Text('Myshifts page')
      )
      
    );
  }
}