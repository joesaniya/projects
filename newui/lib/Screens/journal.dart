import 'package:flutter/material.dart';
import 'package:newui/theme/theme.dart';
class Journals extends StatefulWidget {
  const Journals({ Key? key }) : super(key: key);

  @override
  State<Journals> createState() => _JournalsState();
}

class _JournalsState extends State<Journals> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column
      (
        children: 
        [
          SizedBox
          (
            height: 10,
          ),
          Container
                                (
                                  height: 30,
                                  width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // color: Appcolor.todaybg,
                                  color: Colors.white
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.calendar_today,size: 15,),
                                      Text('17 Jun - 23 Jun',style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Appcolor.todaytext)),
                                    ],
                                  )
                                ),
          SizedBox
          (
            
          ),
        ],
      ),
      
    );
  }
}