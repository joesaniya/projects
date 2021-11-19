import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp( 
MaterialApp( 
home: Scaffold(
  backgroundColor: Colors.white, 
  appBar: AppBar( 
    backgroundColor: Colors.pink,
    title: Text('Ask Me Anything'), 
    centerTitle: true,
    ), 
    body: Magicball(),
), 
), 
); 
 
class Magicball extends StatefulWidget {
  const Magicball({ Key? key }) : super(key: key);

  @override
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int ImageNum = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
 child: FlatButton(
 onPressed: (){
 setState(() {
 ImageNum = Random().nextInt(5) + 1;
 });
 },
 child: Container(
   margin: EdgeInsets.only(left:1.0),
   decoration: BoxDecoration(
     
                borderRadius: BorderRadius.all(
                  Radius.circular(10),//this is will be set the circle
                ),
                boxShadow: [
                  BoxShadow(color:Colors.grey,
                  blurRadius:40.0,
                  spreadRadius:2.0, )
                ],//shadow for the box
                
              ),

 child: Image.asset('assets/images/balls$ImageNum.jpg'),
 
 ),
 ),
 );
 }
}

    
    