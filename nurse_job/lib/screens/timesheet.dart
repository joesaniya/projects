import 'package:flutter/material.dart';

class TimeSheet extends StatefulWidget {
  const TimeSheet({ Key? key }) : super(key: key);

  @override
  State<TimeSheet> createState() => _TimeSheetState();
}

class _TimeSheetState extends State<TimeSheet> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:Center(
        child:Text('Time page')
      )
      
    );
  }
}