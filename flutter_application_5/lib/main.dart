import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const list());
}

class list extends StatefulWidget {
  const list({ Key? key }) : super(key: key);

  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {

  int randomNumber=0;
  String colors1= "red";
  // String randomNumber='x';
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      title: 'appTitle',  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('aRandom Colors',),
          backgroundColor: Colors.teal,
          centerTitle: true,  
        ),   
        body: Container(
          color: Colors.teal[100],
          child: ListView(  
            children: <Widget>[  
              Card(
                margin: EdgeInsets.all(10.0),
                elevation: 10.0,
                child: ListTile(  
                  // color: colors1=="red"?Colors.red:colors1=="blue"?Colors.blue:colors1=="green"?Colors.green:Colors.grey,
                  title: Text('green',style: TextStyle(color:Colors.green,),textAlign: TextAlign.center,
                  ),
                  onTap: (){
                    setState(() {randomNumber=Random().nextInt(6);
                    //  print(randomNumber);
                    });
                  },
              
                ),
              ),  
               
              Card(
                margin: EdgeInsets.all(10.0),
                elevation: 10.0,
                child: ListTile(  
                  title: Text('Red',style: TextStyle(color:Colors.green),textAlign: TextAlign.center,),  
                  onTap: (){
                    setState(() {randomNumber=Random().nextInt(6);
                    //  print(randomNumber);
                    });
                  },
                ),
                              
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                elevation: 10.0,
                child: RaisedButton(  
                  child:Text('Random'),
                  onPressed: (){
                    setState(() {randomNumber=Random().nextInt(6);
                    //  print(randomNumber);
                    });
                  }

                ),
                              
              ), 
              Text('Random numbers:$randomNumber'),  
            ],  
          ),
          // child:Container(
          //       padding: EdgeInsets.all(10.0),
          //       child:ElevatedButton(
          //         child:Text('Random'),
          //         onPressed: (){
          //           setState(() {
          //            randomNumber=Random().nextInt(6).toString();
          //           //  print(randomNumber);
          //           });
          //         })
          //     )

        ),  
      ),  
    );  

      
    
  }
}