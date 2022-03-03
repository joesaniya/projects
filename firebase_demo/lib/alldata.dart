import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllData extends StatefulWidget {
  @override
  State<AllData> createState() => _AllDataState();
}

class _AllDataState extends State<AllData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Displaying All Data'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('test').snapshots(),
        builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
          if(!snapshot.hasData)
          {
            return Text("No Data!!",style: TextStyle(fontWeight: FontWeight.bold),);
          }
          return Center(
            child: Card(
              // clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),  // radius of 10
                  color: Colors.green[100]  // green as background color
                ),
                height: 250.0,
                width: 350.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  child: ListView(
                    children: snapshot.data!.docs.map((document){
                      return Text
                        (
                          document['field1'] + "  " +  document['field2'] + "  " +document['field3'].toString(),style: TextStyle(fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                        );
                        
                        
                      
                    }
                    ).toList(),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}