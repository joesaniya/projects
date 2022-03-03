
import './theme/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:nurse_job/tabscreen/pageswitcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch:Appcolor.primary,
        fontFamily: 'PT Sans',
        scaffoldBackgroundColor: Appcolor.primary
      ),
      home: const MyHomePage(title: 'Nurse Job'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // appBar: AppBar(
        
        
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Container(
          color: Appcolor.secondary,
          width:345,
          height:42,
          child: ElevatedButton
          (
            child: Text('Get Started',style: TextStyle
            (
              fontFamily: 'PT Sans',
              color: Colors.white,
            ),),
            onPressed: (){
               Navigator.push(
              context, MaterialPageRoute(builder: (context) => PageSwitcher()));
            },
             style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 145, 90, 221),
                  // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold)
            ),
          ),
          // decoration: BoxDecoration
          // (
          //   borderRadius: BorderRadius.only
          //   ( 
          //     bottomRight: Radius.circular(90.0),
          //     bottomLeft: Radius.circular(40.0)
          //   )
          // ),
        ),
       
      ),
    );
  }
}