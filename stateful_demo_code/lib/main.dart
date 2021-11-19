import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main()
{
  runApp(
    MaterialApp(
      title: "Stateful Example",
      home:City(),
    )
  );
}

class City extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _CityState();
  }
}


class _CityState extends State<City>
{
  // var color=Colors.white;
   String colors1= "red";
  
  // String nameCity="chennai";
@override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
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
               color: colors1=="red"?Colors.red:colors1=="blue"?Colors.blue:colors1=="green"?Colors.green://condition
               Colors.grey,
             ),
             RaisedButton(
               child: Text('blue',style:TextStyle(color: Colors.blue)),
               onPressed: (){
                 setState(() {
                   colors1="blue";
                 });
               },),
              RaisedButton(
               child: Text('Red',style:TextStyle(color: Colors.red)),
               onPressed: (){
                 setState(() {
                   colors1="red";
                 });
               },),
               RaisedButton(
               child: Text('Green',style:TextStyle(color:Colors.green)),
               onPressed: (){
                 setState(() {
                   colors1="green";
                 });
               },)
               
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

