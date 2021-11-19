import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
          title:  Text('Fruits',style: TextStyle(color: Colors.lightGreenAccent,fontSize: 28,fontWeight:FontWeight.bold),),
          backgroundColor: Colors.pink,
          centerTitle: true,
          ),
          body:MyDynamic()
      ),
      
    );
  }
}


class MyDynamic extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    final Fruits=['Apple','Banana','grapes','orange','Mango'];
    String name='esther';
    return ListView.builder
    (
      itemCount: Fruits.length,
      itemBuilder:(context,index)
      {
        return Card(
          margin: EdgeInsets.all(10.0),
          elevation: 10.0,
          child: ListTile( 
            title: new Text(Fruits[index]),

            leading: CircleAvatar(child: Icon(Icons.map)), 
        
          ),
        );

      }
    );
    
  }
}

