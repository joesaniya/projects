import 'package:flutter/material.dart';

import 'custom_dropdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drop Down',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
          primarySwatch: Colors.grey
        ),
      home: const Scaffold(
        body: Padding
          (
            padding: EdgeInsets.only(top: 48.0, left:32.0,right: 32.0),
            child: CustomDropdown(),
          ),
      ),
    );
  }
}