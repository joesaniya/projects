import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(appBar: AppBar(title: Text('Dice Game'),
    backgroundColor: Colors.red[200],
    centerTitle: true,
    ),
    body:DiceGame(),
    ),
  ));
}

class DiceGame extends StatefulWidget {
  const DiceGame({ Key? key }) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {

  int leftdice=1;
  int rightdice=2;

  rolldices(){
    setState(() {
      leftdice=Random().nextInt(6)+1;
      rightdice=Random().nextInt(6)+1;
      
    });
  }
  
  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [


          Expanded(child: FlatButton(
          onPressed: (){
            rolldices();
          }, 
          child: Image.asset('assets/images/$leftdice.png'),
          ),
          ),
           Expanded(child: FlatButton(
          onPressed: (){
            rolldices();
          }, 
          child: Image.asset('assets/images/$rightdice.png'),
          ),
          )


        ],
        
      ),
    );
  }
}

