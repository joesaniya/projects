import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(home:home()));
}

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String randomNumber='x';
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple[100],
        title: Text('Colors Generator',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
        centerTitle: true,
                    ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text('Random numbers:$randomNumber'),
              Container(
                padding: EdgeInsets.all(10.0),
                child:ElevatedButton(
                  child:Text('Random'),
                  onPressed: (){
                    setState(() {
                     randomNumber=Random().nextInt(6).toString();
                    //  print(randomNumber);
                    });
                  })
              )
              ],
            ),
          ),
        ),

      
    );
  }
}