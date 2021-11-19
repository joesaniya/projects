






















// import 'package:flutter/material.dart';
// import 'package:net_de/main.dart';
// import 'package:http/http.dart' as http;

// class Note
// {
//   String title;
//   int id;

//   Note(this.title,this.id);

//   Note.fromJson(Map<String, dynamic> json)
//   {
//     title=json['title'];
//     title=json['id'];

//   }
// }

// void main() {
//   runApp(const HomePage());
// }

// class HomePage extends StatefulWidget {
//   const HomePage({ Key? key }) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

// void initState(){
//   // fetchAlbum();
//   super.initState();

// }

// Future fetchNotes() async{
//   var url='https://jsonplaceholder.typicode.com/albums/';
//   var response=await http.get(url);

// }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Data'),
//         ),
        
//         body: ListView.builder(
//           itemBuilder: (context, index)
//           {
//             return Card(
//               child: Column(
//                 children: [
//                   Text('Notes'),
//                   Text('Subtitle')
//                 ],
//               ),
//             );
//           }
//           ),
        
  
//         ),
      
//     );

//   }
// }
