import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main() => runApp(MaterialApp(home:Month()));

class Month extends StatefulWidget {
  const Month({ Key? key }) : super(key: key);

  @override
  State<Month> createState() => _MonthState();
}

class _MonthState extends State<Month> {
  // var current_mon;

  List months = 
        ['jan', 'feb', 'mar', 'apr', 'may','jun','jul','aug','sep','oct','nov','dec'];
        var now = new DateTime.now();
        int current_mon = now.month;
        // print(months[current_mon-1]);

        
        

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}