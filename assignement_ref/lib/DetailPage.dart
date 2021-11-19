import 'dart:convert';

import 'package:assignement_ref/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailPage extends StatefulWidget {
  String name;
  DetailPage(this.name);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late String text=widget.name;

  Future<States> fetchJSONData(String text) async {
 
    final response = await http
      .get(Uri.parse('https://api.covidtracking.com/v1/states/current.json'));
 
    if (response.statusCode == 200) {
      return States.fromJson(jsonDecode(response.body));
    
    } else {
      throw Exception('Failed to load data from internet');
    }
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome: ${widget.name}"),
      ),
      
      body: Center(
      
        child: Card(
          elevation: 30.0,
          child: Container(
            width: 500,
            height: 500,
          child: Center(
            child: Text("State Name: ${widget.name}",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w600,color: Colors.pinkAccent),),
          )
        ),
        )

      ),
      // body: _buildListView(),
    );
  }
}