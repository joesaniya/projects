import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: colors()));
}

class colors extends StatefulWidget {
  const colors({ Key? key }) : super(key: key);

  @override
  _colorsState createState() => _colorsState();
}

class _colorsState extends State<colors> {

  // var list=<String>["red","blue","green"];
  // var rand= new Random();//get the random string
  // int i = rand.nextInt(list.length);
  // String randomString=list[i];
   List<String> colors=['red','blue','green','purple','orange'];
  // var element = getRandomElement(colors);
   int randomNumber=0;
   String colors1= "red";
  
  
@override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        title: Text('Colors Generator',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
             Container(
               
               margin: EdgeInsets.all(20.0),
               width: 300,
               height: 300,
               color: colors1=="red"?Colors.red:colors1=="blue"?Colors.blue:colors1=="green"?Colors.green:colors1=="purple"?Colors.purple:colors1=="orange"?Colors.orange:Colors.grey,
             ),
             Text('Color Name:  $colors1',style: TextStyle(fontSize: 30),),
             RaisedButton(
               child: Text('Color Piker',style:TextStyle(color: Colors.blue,fontSize: 20)),
               onPressed: (){
                 setState(() {
                   colors1="blue";
                randomNumber=Random().nextInt(6);
                print(randomNumber);
                print(colors[4]);

                colors1 = colors[randomNumber];
                print(colors1);
                
                 });
               },),
              
               
            ],
          )
          ),
      ),
      // body: Container(
      //   margin: EdgeInsets.all(30.0),
      //   color: Colors.grey[50],
      //   child: Column(
      //     children: [
      //       TextField(
      //         onSubmitted: (String userInput)
      //         {
      //           setState(() {
      //             nameCity=userInput;
      //           });
      //           // nameCity=userInput;
      //         },
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         // child: Text("Your Text City is : $nameCity",style: TextStyle(fontSize: 20.0),),
      //         child:RichText(text: 
      //         TextSpan(
      //           children: [
      //             TextSpan(text: 'Your Text City is : ',style: TextStyle(color: Colors.red)),
      //             TextSpan(text: ' $nameCity',style: TextStyle(color: Colors.green))
      //           ]
      //         ),
      //         )
      //       ),
            
      //     ],
      //   ),
      // ),
    );

  }
}

  // getRandomElement(List<String> colors) {
  //   final random = new Random();
  //   var i = random.nextInt(colors.length);
  //   return colors[i];
  // }
