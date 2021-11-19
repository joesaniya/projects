import 'dart:ui';

import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(home: QuoteList())
);

class QuoteList extends StatefulWidget {
  const QuoteList({ Key? key }) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  final _controllername=TextEditingController();
  // late String name="";
   List sample = [
   {
   "name":"entrans",
   "place":"nazareth"
 }, 

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('update'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, 

        children: [
          Container(
            child: TextField(
              controller: _controllername,
            ),
          ),
          Container(
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('update'),
              onPressed: ()
              {
                setState(() {
		sample[0]['name']=_controllername.text;
		print(sample);
                });
              },
            ),
          ),
          Text(sample[0]['name'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0
            ),
            ),
          Text(sample[0]['place'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0
            ),
            ),
            
        ],
        
      ),
      
      
      
    );
  }
}
