import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home:Container(
        color:blue,
        child:SafeArea(
          
          child: Row(children: [Image.asset('assets/images/cat2.jpg',width:200,height:200,),],
          )
        )
      )
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   MyHomePage({Key? key, required this.title}) : super(key: key);


//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         backgroundColor: Colors.blue,
//         title: new Text(widget.title),
//       ),
//       body: new Center(
//         child: new ListView(
//           children: [
//             Image.asset('images/cat2.jpg',  
//               width: 100.0,
//               height: 140.0,
//               fit: BoxFit.cover,),
//             Image.asset('images/cat3.jpg',  
//               width: 100.0,
//               height: 140.0,
//               fit: BoxFit.cover,),
//             Image.asset('images/cat4.jpg',  
//               width: 100.0,
//               height: 140.0,
//               fit: BoxFit.cover,),
//             Image.asset('images/cat2.jpg',  
//               width: 100.0,
//               height: 140.0,
//               fit: BoxFit.cover,)
//           ],
          
//         ),
//       ),
//     );
//   }
// }