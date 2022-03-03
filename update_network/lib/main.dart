import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
  
  void main() => runApp(MyApp());
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
          child: JSONListView()
          ),
      ));
    }
  }
 
  class GetUsers {
  int id;
  String name;
  String email;
  String phoneNumber;
 
  GetUsers({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber
  });
 
  factory GetUsers.fromJson(Map<String, dynamic> json) {
    return GetUsers(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phone']
    );
  }
}
 
class JSONListView extends StatefulWidget {
  CustomJSONListView createState() => CustomJSONListView();
}
 
class CustomJSONListView extends State {
 
  final String apiURL = 'https://jsonplaceholder.typicode.com/users';

  get usersList => null;

  get name => null;
 
  Future<List<GetUsers>> fetchJSONData() async {
 
    // var jsonResponse = await http.get(apiURL);
    final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
 
    if (response.statusCode == 200) {
 
      final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
      List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
        return GetUsers.fromJson(json);
      }).toList();
 
      return usersList;
    
    } else {
      throw Exception('Failed to load data from internet');
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[200],
        title: Text('Fetching a Data'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>JSONListView())
                      );
            },
            icon: Icon(Icons.home),
          ),
      ),
      body: FutureBuilder<List<GetUsers>>(
        future: fetchJSONData(),
        builder: (context, snapshot) {
 
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
 
          return ListView(
            children: snapshot.data!
            .map((user) => Card(
              child: ListTile(
                    title: Text(user.name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    onTap: (){ 
                      var text;
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>DetailPage(user.name))
                      );
                      // print(user.name); 
                    },
                    subtitle: Text(user.phoneNumber,style: TextStyle(fontSize: 18),),
                    trailing: Icon(Icons.arrow_forward),
                    leading: CircleAvatar(
                      backgroundColor: Colors.pinkAccent[100],
                      child: Text(user.name[0],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                    ),
                  ),
            ),
              )
            .toList(),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
 String name  ;
DetailPage( this.name);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
 // get name => null;
// String name = "demo";
late String name=widget.name;
late String text=widget.name;

void _setText()
{
  setState(() {
    text=widget.name;
  });
}

  // final String apiURL = 'https://jsonplaceholder.typicode.com/users';
 
  Future<GetUsers> fetchJSONData(String name) async {
 
    // var jsonResponse = await http.get(apiURL);
    final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/users/${widget.name}'));
 
    if (response.statusCode == 200) {
      return GetUsers.fromJson(jsonDecode(response.body));
 
      // final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
      // List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
      //   return GetUsers.fromJson(json);
      // }).toList();
 
      // return usersList;
    
    } else {
      throw Exception('Failed to load data from internet');
    }
  } 
  Future<GetUsers> updateGet(String name) async {
  final response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/users'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': myController.text,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return GetUsers.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to update album.');
  }
}
  
  
  // final TextEditingController _name=TextEditingController(text:name);
  late Future<GetUsers> _futureGetUsers;
  final myController=TextEditingController();

  @override
  void initState()
  {
    super.initState();
    setState(() {
        //  name = widget.name;
        // name=myController.text;
        _futureGetUsers=fetchJSONData(myController.text);
      
    });
 
    // _futureGetUsers=updateGet(myController.text) as Future<GetUsers>;
  }

  // void _printLatestValue() {
  // print('Second text field: ${myController.text}');
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text(widget.name),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent[100],
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>JSONListView())
                      );
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body:
        
        
        
         Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          
          child:
          
          
      
                  
                  
                  
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      TextField(
                        controller: myController,
                        decoration: InputDecoration(labelText: widget.name),
                        // onChanged: (value)=>name=value,
                        onChanged: (name){
                          print(name);
                        },
                        
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                       RaisedButton(
                         onPressed: ()
                         {
                           setState(() {
                             _futureGetUsers=updateGet(name);
                           });
                         },
                        //  onPressed: _setText,
                         child: Text('update'),
                       ),
                       SizedBox(
                         height: 10.0,
                       ),
                       Text(
                         name,style: TextStyle(fontSize: 22),
                         
                        ),

                  //  Text(widget.name),
                      

                  //     TextField(
                        
                  //       controller: myController,
                  //       decoration: const InputDecoration(
                  //         hintText: ('Enter Name'),
                  //       ),
                  //       onChanged: (name){
                  //         print(name);
                  //       },
                  //     ),
                  //     ElevatedButton(
                  //       onPressed: () {
                  //         setState(() {
                  //           print(widget.name);
                  //           // _futureGetUsers = updateGet(_name.text) as Future<GetUsers>;
                  //         });s
                  //       },
                  //       child: const Text('Update Name'),
                  //     ),
                    ],
         ) )));
                 
               
        
      
  
      
  }
}




// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
  
//   void main() => runApp(MyApp());
  
//   class MyApp extends StatelessWidget {
//     @override
//     Widget build(BuildContext context) {
//       return MaterialApp(
//         home: Scaffold(
//           body: Center(
//           child: JSONListView()
//           ),
//       ));
//     }
//   }
 
//   class GetUsers {
//   int id;
//   String name;
//   String email;
//   String phoneNumber;
 
//   GetUsers({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.phoneNumber
//   });
 
//   factory GetUsers.fromJson(Map<String, dynamic> json) {
//     return GetUsers(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       phoneNumber: json['phone']
//     );
//   }
// }
 
// class JSONListView extends StatefulWidget {
//   CustomJSONListView createState() => CustomJSONListView();
// }
 
// class CustomJSONListView extends State {
 
//   final String apiURL = 'https://jsonplaceholder.typicode.com/users';

//   get usersList => null;

//   get name => null;
 
//   Future<List<GetUsers>> fetchJSONData() async {
 
//     // var jsonResponse = await http.get(apiURL);
//     final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
 
//     if (response.statusCode == 200) {
 
//       final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
//       List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
//         return GetUsers.fromJson(json);
//       }).toList();
 
//       return usersList;
    
//     } else {
//       throw Exception('Failed to load data from internet');
//     }
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fetching a Data'),
//         centerTitle: true,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.push(context, 
//                         MaterialPageRoute(builder: (context)=>JSONListView())
//                       );
//             },
//             icon: Icon(Icons.home),
//           ),
//       ),
//       body: FutureBuilder<List<GetUsers>>(
//         future: fetchJSONData(),
//         builder: (context, snapshot) {
 
//           if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
 
//           return ListView(
//             children: snapshot.data!
//             .map((user) => Card(
//               child: ListTile(
//                     title: Text(user.name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
//                     onTap: (){ 
//                       var text;
//                       Navigator.push(context, 
//                         MaterialPageRoute(builder: (context)=>DetailPage(user.name))
//                       );
//                       // print(user.name); 
//                     },
//                     subtitle: Text(user.phoneNumber,style: TextStyle(fontSize: 18),),
//                     trailing: Icon(Icons.arrow_forward),
//                     leading: CircleAvatar(
//                       backgroundColor: Colors.green,
//                       child: Text(user.name[0],
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                       )),
//                     ),
//                   ),
//             ),
//               )
//             .toList(),
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailPage extends StatefulWidget {
//  String name  ;
// DetailPage( this.name);

//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {

//   // final String apiURL = 'https://jsonplaceholder.typicode.com/users';
 
//   Future<GetUsers> fetchJSONData(String name) async {

//    print('detail page fetch');
//     // var jsonResponse = await http.get(apiURL);
//     final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
 
//     if (response.statusCode == 200) {
//       return GetUsers.fromJson(jsonDecode(response.body));
 
//       final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
//       List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
//         return GetUsers.fromJson(json);
//       }).toList();
 
//       // return usersList;
    
//     } else {
//       throw Exception('Failed to load data from internet');
//     }
//   } 
  
  
//   final TextEditingController _name=TextEditingController();
//   late Future<GetUsers> _futureGetUsers;

//   @override
//   void initState()
//   {
//     print('redirect');
//     super.initState();
//     //  _futureGetUsers=fetchJSONData(_name.text);
//     _futureGetUsers=fetchJSONData(_name.text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:  Text(widget.name),
//           centerTitle: true,
//           backgroundColor: Colors.pinkAccent[100],
//           leading: IconButton(
//             onPressed: () {
//               Navigator.push(context, 
//                         MaterialPageRoute(builder: (context)=>JSONListView())
//                       );
//             },
//             icon: Icon(Icons.arrow_back),
//           ),
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           padding: const EdgeInsets.all(8.0),
          
//           child: FutureBuilder<GetUsers>(
//             future: _futureGetUsers,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 if (snapshot.hasData) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text(snapshot.data!.name),
//                       TextField(
//                         controller: _name,
//                         decoration: const InputDecoration(
//                           hintText: 'Enter Name',
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             _futureGetUsers = fetchJSONData(_name.text);
//                             // _futureGetUsers = fetchJSONData(_name.text) as Future<GetUsers>;
//                           });
//                         },
//                         child: const Text('Update Name'),
//                       ),
//                     ],
//                   );
//                 } else if (snapshot.hasError) {
//                   return Text('${snapshot.error}');
//                 }
//               }

//               return const CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
      
//   }
// }







// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   late String data;
// //   var superheros_length;
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     getData();
// //   }

// //   void getData() async {
// //     http.Response response =
// //         await http.get(Uri.https('https://protocoderspoint.com/jsondata', 'superheros.json'));
// //     // http.get(Uri.https('https://swapi.co', 'api/people'));
// //     // https://protocoderspoint.com/jsondata/superheros.json
// //     if (response.statusCode == 200) {
// //       data = response.body; //store response as string

// //       setState(() {
// //         superheros_length = jsonDecode(
// //             data)['superheros']; //get all the data from json string superheros

// //         print(superheros_length.length); // just printed length of data
// //       });

// //       var venam = jsonDecode(data)['superheros'][4]['url'];

// //       print(venam);
// //     } else {
// //       print(response.statusCode);
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Flutter Http Example"),
// //       ),
// //       body: ListView.builder(
// //         itemCount: superheros_length == null ? 0 : superheros_length.length,
// //         itemBuilder: (BuildContext context, int index) {
// //           return Card(
// //             child: ListTile(
// //               leading: Image.network(
// //                 jsonDecode(data)['superheros'][index]['url'],
// //                 fit: BoxFit.fill,
// //                 width: 100,
// //                 height: 500,
// //                 alignment: Alignment.center,
// //               ),
// //               title: Text(jsonDecode(data)['superheros'][index]['name']),
// //               subtitle: Text(jsonDecode(data)['superheros'][index]['power']),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }




// // import 'package:flutter/material.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
  
// //   void main() => runApp(MyApp());
  
// //   class MyApp extends StatelessWidget {
// //     @override
// //     Widget build(BuildContext context) {
// //       return MaterialApp(
// //         home: Scaffold(
// //           body: Center(
// //           child: JSONListView()
// //           ),
// //       ));
// //     }
// //   }
 
// //   class GetUsers {
// //   int id;
// //   String name;
// //   String email;
// //   String phoneNumber;
 
// //   GetUsers({
// //     required this.id,
// //     required this.name,
// //     required this.email,
// //     required this.phoneNumber
// //   });
 
// //   factory GetUsers.fromJson(Map<String, dynamic> json) {
// //     return GetUsers(
// //       id: json['id'],
// //       name: json['name'],
// //       email: json['email'],
// //       phoneNumber: json['phone']
// //     );
// //   }
// // }


// // //   Future<GetUsers> fetchAlbum() async {
// // //     print('call');
// // //   final response = await http.get(
// // //     Uri.parse('https://jsonplaceholder.typicode.com/users'),
// // //   );

// // //   if (response.statusCode == 200) {
// // //     return GetUsers.fromJson(jsonDecode(response.body));
// // //   } else {
// // //     throw Exception('Failed to load album');
// // //   }
// // // }

// //   Future<List<GetUsers>> fetchJSONData() async {
// //     print("fetch");
// //     // var jsonResponse = await http.get(apiURL);
// //     final response = await http
// //       .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
 
// //     if (response.statusCode == 200) {
 
// //       final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
// //       List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
// //         return GetUsers.fromJson(json);
// //       }).toList();
 
// //       return usersList;
    
// //     } else {
// //       throw Exception('Failed to load data from internet');
// //     }
// //   }

// //   Future<GetUsers> updateAlbum(String name)async{
// //     print("updte cal");
// //     final response = await http
// //       .put(Uri.parse('https://jsonplaceholder.typicode.com/users'),
// //       headers: <String,String>
// //       {
// //         'Content-Type': 'application/json; charset=UTF-8',
// //       },
// //         body: jsonEncode(<String, String>{
// //       'name': name,
// //     }),
// //       );
// //       if (response.statusCode == 200) {
// //     return GetUsers.fromJson(jsonDecode(response.body));
// //   } else {
// //     throw Exception('Failed to update album.');
// //   }
// //   }
 
// // class JSONListView extends StatefulWidget {
// //   CustomJSONListView createState() => CustomJSONListView();
// // }
 
// // class CustomJSONListView extends State {
// //   late Future<GetUsers> futureAlbum;
 
// //   final String apiURL = 'https://jsonplaceholder.typicode.com/users';

// //   Future<List<GetUsers>> fetchJSONData() async {
// //     print("fetch");
// //     // var jsonResponse = await http.get(apiURL);
// //     final response = await http
// //       .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
 
// //     if (response.statusCode == 200) {
 
// //       final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
// //       List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
// //         return GetUsers.fromJson(json);
// //       }).toList();
 
// //       return usersList;
    
// //     } else {
// //       throw Exception('Failed to load data from internet');
// //     }
// //   }

// //   get usersList => null;

// //   get name => null;
 
 
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.tealAccent[200],
// //         title: Text('Fetching a Data'),
// //         centerTitle: true,
// //         leading: IconButton(
// //             onPressed: () {
// //               Navigator.push(context, 
// //                         MaterialPageRoute(builder: (context)=>JSONListView())
// //                       );
// //             },
// //             icon: Icon(Icons.home),
// //           ),
// //       ),

// //       // body: Center(
// //       //   child: FutureBuilder<GetUsers>(
// //       //     future: fetchAlbum(),
// //       //     builder: (context,snapshot)
// //       //     {
// //       //       if(snapshot.hasData)
// //       //       {
// //       //         return Text(snapshot.data!.name);
// //       //       }
// //       //       else if(snapshot.hasError)
// //       //       {
// //       //         return Text('${snapshot.error}');
// //       //       }
// //       //       return CircularProgressIndicator();
// //       //     },
// //       //     ),
// //       // ),
// //       body: FutureBuilder<List<GetUsers>>(
// //         future: fetchJSONData(),
// //         builder: (context, snapshot) {
 
// //           if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
 
// //           return ListView(
// //             children: snapshot.data!
// //             .map((user) => Card(
// //               child: ListTile(
// //                     title: Text(user.name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
// //                     onTap: (){ 
// //                       // var text;
// //                       Navigator.push(context, 
// //                         MaterialPageRoute(builder: (context)=>DetailPage(user.name))
// //                       );
// //                       print(user.name); 
// //                     },
// //                     subtitle: Text(user.phoneNumber,style: TextStyle(fontSize: 18),),
// //                     trailing: Icon(Icons.arrow_forward),
// //                     leading: CircleAvatar(
// //                       backgroundColor: Colors.pinkAccent[100],
// //                       child: Text(user.name[0],
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: 20.0,
// //                       )),
// //                     ),
// //                   ),
// //             ),
// //               )
// //             .toList(),
// //           );
// //         },
// //       ),

// //     );
// //   }
// // }

// // class DetailPage extends StatefulWidget {
// //   String name;
// //   DetailPage(this.name);

// //   @override
// //   _DetailPageState createState() => _DetailPageState();
// // }

// // class _DetailPageState extends State<DetailPage> {
// //   final TextEditingController _controller=TextEditingController();
// //   late Future<GetUsers> _futureAlbum;

// //   @override
// //   void initState()
// //   {
// //     super.initState();
// //     _futureAlbum= fetchJSONData() as Future<GetUsers>;
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       alignment: Alignment.center,
// //       padding: EdgeInsets.all(10.0),
// //       child: FutureBuilder<GetUsers>
// //       (
// //         future: _futureAlbum,
// //         builder: (context,snapshot)
// //         {
// //           if(snapshot.connectionState==ConnectionState.done)
// //           {
// //             if(snapshot.hasData)
// //             {
// //               return Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(snapshot.data!.name),
// //                   TextField(
// //                     controller: _controller,
// //                     decoration: InputDecoration(
// //                       hintText: 'Name',
// //                     ),
// //                   ),
// //                   ElevatedButton(
// //                         onPressed: () {
// //                           setState(() {
// //                             _futureAlbum = updateAlbum(_controller.text);
// //                           });
// //                         },
// //                         child: const Text('Update Data'),
// //                       ),
// //                 ],
// //               );
// //             }
// //             else if(snapshot.hasError)
// //             {
// //               return Text('${snapshot.error}');
// //             }
// //           }
// //           return const CircularProgressIndicator();
// //         }
// //       ),
      
// //     );
// //   }
// // }


































// // // import 'dart:async';
// // // import 'dart:convert';

// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;

// // // class Album {
// // //   final int id;
// // //   final String title;

// // //   Album({required this.id, required this.title});

// // //   factory Album.fromJson(Map<String, dynamic> json) {
// // //     return Album(
// // //       id: json['id'],
// // //       title: json['title'],
// // //     );
// // //   }
// // // }

// // // void main()=>runApp(MyApp());
// // //  class MyApp extends StatelessWidget
// // //  {
// // //    @override
// // //   Widget build(BuildContext context)
// // //    {
// // //      return MaterialApp(
// // //        home: Scaffold(
// // //          body: Center(
// // //            child: JSONListView()
// // //          ),
// // //        )
// // //      );
// // //    }
// // //  }

// // //  class JSONListView extends StatefulWidget {
// // //   CustomJSONListView createState() => CustomJSONListView();
// // // }
 
// // // class CustomJSONListView extends State {
 
// // //   final String apiURL = 'https://jsonplaceholder.typicode.com/albums';

// // //   get usersList => null;

// // //   get name => null;
 
// // //   Future<List<Album>> fetchJSONData() async {
 
// // //     // var jsonResponse = await http.get(apiURL);
// // //     final response = await http
// // //       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
 
// // //     if (response.statusCode == 200) {
 
// // //       final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
// // //       List<Album> usersList = jsonItems.map<Album>((json) {
// // //         return Album.fromJson(json);
// // //       }).toList();
 
// // //       return usersList;
    
// // //     } else {
// // //       throw Exception('Failed to load data from internet');
// // //     }
// // //   }
 
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.tealAccent[200],
// // //         title: Text('Fetching a Data'),
// // //         centerTitle: true,
// // //         leading: IconButton(
// // //             onPressed: () {
// // //               Navigator.push(context, 
// // //                         MaterialPageRoute(builder: (context)=>JSONListView())
// // //                       );
// // //             },
// // //             icon: Icon(Icons.home),
// // //           ),
// // //       ),
// // //       body: FutureBuilder<List<Album>>(
// // //         future: fetchJSONData(),
// // //         builder: (context, snapshot) {
 
// // //           if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
 
// // //           return ListView(
// // //             children: snapshot.data!
// // //             .map((user) => Card(
// // //               child: ListTile(
// // //                     title: Text(user.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
// // //                     onTap: (){ 
// // //                       var text;
// // //                       Navigator.push(context, 
// // //                         MaterialPageRoute(builder: (context)=>DetailPage(user.title))
// // //                       );
// // //                       print(user.title); 
// // //                     },
// // //                     // subtitle: Text(user.id,style: TextStyle(fontSize: 18),),
// // //                     trailing: Icon(Icons.arrow_forward),
// // //                     leading: CircleAvatar(
// // //                       backgroundColor: Colors.pinkAccent[100],
// // //                       child: Text(user.title[0],
// // //                       style: TextStyle(
// // //                         color: Colors.white,
// // //                         fontSize: 20.0,
// // //                       )),
// // //                     ),
// // //                   ),
// // //             ),
// // //               )
// // //             .toList(),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// // // class DetailPage extends StatefulWidget {
// // //   String title;
// // //   DetailPage(this.title);

// // //   @override
// // //   _DetailPageState createState() => _DetailPageState();
// // // }

// // // class _DetailPageState extends State<DetailPage> {

// // // final TextEditingController _controller = TextEditingController();
// // //   late Future<Album> _futureAlbum;

// // //   Future<List<Album>> fetchJSONData() async {
 
// // //     // var jsonResponse = await http.get(apiURL);
// // //     final response = await http
// // //       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
 
// // //     if (response.statusCode == 200) {
 
// // //       final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
 
// // //       List<Album> usersList = jsonItems.map<Album>((json) {
// // //         return Album.fromJson(json);
// // //       }).toList();
 
// // //       return usersList;
    
// // //     } else {
// // //       throw Exception('Failed to load data from internet');
// // //     }
// // //   }
  
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _futureAlbum = fetchJSONData() as Future<Album>;
// // //   }
// // //   Future<Album> updateAlbum(String title) async {
// // //   final response = await http.put(
// // //     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
// // //     headers: <String, String>{
// // //       'Content-Type': 'application/json; charset=UTF-8',
// // //     },
// // //     body: jsonEncode(<String, String>{
// // //       'title': title,
// // //     }),
// // //   );

// // //   if (response.statusCode == 200) {
// // //     return Album.fromJson(jsonDecode(response.body));
// // //   } else {
// // //     throw Exception('Failed to update album.');
// // //   }
// // // }
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Update Data Example',
// // //       theme: ThemeData(
// // //         primarySwatch: Colors.blue,
// // //       ),
// // //       home: Scaffold(
// // //         appBar: AppBar(
// // //           title: const Text('Update Data'),
// // //           centerTitle: true,
// // //           elevation: 5.0,
// // //           backgroundColor: Colors.amber,
// // //         ),
// // //         body: Container(
// // //           alignment: Alignment.center,
// // //           padding: const EdgeInsets.all(8.0),

// // //           child: FutureBuilder<Album>(
// // //             future: _futureAlbum,
// // //             builder: (context, snapshot) 
// // //             {
// // //               if (snapshot.connectionState == ConnectionState.done) {
// // //                 if (snapshot.hasData) {
// // //                   return Column(
// // //                     mainAxisAlignment: MainAxisAlignment.center,
// // //                     children: <Widget>[
// // //                       Text(snapshot.data!.title),
// // //                       TextField(
// // //                         controller: _controller,
// // //                         decoration: const InputDecoration(
// // //                           hintText: 'Enter Title',
// // //                         ),
// // //                       ),
// // //                       ElevatedButton(
// // //                         onPressed: () {
// // //                           setState(() {
// // //                             _futureAlbum = updateAlbum(_controller.text);
// // //                           });
// // //                         },
// // //                         child: const Text('Update Data'),
// // //                       ),
// // //                     ],
// // //                   );
// // //                 } else if (snapshot.hasError) {
// // //                   return Text('${snapshot.error}');
// // //                 }
// // //               }

// // //               return const CircularProgressIndicator();
// // //             },
// // //           ),
// // //         ),
        
// // //       ),

      
// // //     );
// // //   }
// // // }








// // // // Future<Album> fetchAlbum() async {
// // // //   final response = await http.get(
// // // //     Uri.parse('https://jsonplaceholder.typicode.com/albums/5'),
// // // //   );

// // // //   if (response.statusCode == 200) {
// // // //     // If the server did return a 200 OK response,
// // // //     // then parse the JSON.
// // // //     return Album.fromJson(jsonDecode(response.body));
// // // //   } else {
// // // //     // If the server did not return a 200 OK response,
// // // //     // then throw an exception.
// // // //     throw Exception('Failed to load album');
// // // //   }
// // // // }

// // // // Future<Album> updateAlbum(String title) async {
// // // //   final response = await http.put(
// // // //     Uri.parse('https://jsonplaceholder.typicode.com/albums/5'),
// // // //     headers: <String, String>{
// // // //       'Content-Type': 'application/json; charset=UTF-8',
// // // //     },
// // // //     body: jsonEncode(<String, String>{
// // // //       'title': title,
// // // //     }),
// // // //   );

// // // //   if (response.statusCode == 200) {
// // // //     // If the server did return a 200 OK response,
// // // //     // then parse the JSON.
// // // //     return Album.fromJson(jsonDecode(response.body));
// // // //   } else {
// // // //     // If the server did not return a 200 OK response,
// // // //     // then throw an exception.
// // // //     throw Exception('Failed to update album.');
// // // //   }
// // // // }

// // // // class Album {
// // // //   final int id;
// // // //   final String title;

// // // //   Album({required this.id, required this.title});

// // // //   factory Album.fromJson(Map<String, dynamic> json) {
// // // //     return Album(
// // // //       id: json['id'],
// // // //       title: json['title'],
// // // //     );
// // // //   }
// // // // }

// // // // // void main() {
// // // // //   runApp(const MyApp());
// // // // // }

// // // // // class MyApp extends StatefulWidget {
// // // // //   const MyApp({Key? key}) : super(key: key);

// // // // //   @override
// // // // //   _MyAppState createState() {
// // // // //     return _MyAppState();
// // // // //   }
// // // // // }

// // // // class _MyAppState extends State<MyApp> {
// // // //   final TextEditingController _controller = TextEditingController();
// // // //   late Future<Album> _futureAlbum;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _futureAlbum = fetchAlbum();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       title: 'Update Data Example',
// // // //       theme: ThemeData(
// // // //         primarySwatch: Colors.blue,
// // // //       ),
// // // //       home: Scaffold(
// // // //         appBar: AppBar(
// // // //           title: const Text('Update Data'),
// // // //           centerTitle: true,
// // // //           elevation: 5.0,
// // // //           backgroundColor: Colors.amber,
// // // //         ),
// // // //         body: Container(
// // // //           alignment: Alignment.center,
// // // //           padding: const EdgeInsets.all(8.0),

// // // //           child: FutureBuilder<Album>(
// // // //             future: _futureAlbum,
// // // //             builder: (context, snapshot) 
// // // //             {
// // // //               if (snapshot.connectionState == ConnectionState.done) {
// // // //                 if (snapshot.hasData) {
// // // //                   return Column(
// // // //                     mainAxisAlignment: MainAxisAlignment.center,
// // // //                     children: <Widget>[
// // // //                       Text(snapshot.data!.title),
// // // //                       TextField(
// // // //                         controller: _controller,
// // // //                         decoration: const InputDecoration(
// // // //                           hintText: 'Enter Title',
// // // //                         ),
// // // //                       ),
// // // //                       ElevatedButton(
// // // //                         onPressed: () {
// // // //                           setState(() {
// // // //                             _futureAlbum = updateAlbum(_controller.text);
// // // //                           });
// // // //                         },
// // // //                         child: const Text('Update Data'),
// // // //                       ),
// // // //                     ],
// // // //                   );
// // // //                 } else if (snapshot.hasError) {
// // // //                   return Text('${snapshot.error}');
// // // //                 }
// // // //               }

// // // //               return const CircularProgressIndicator();
// // // //             },
// // // //           ),
// // // //         ),
        
// // // //       ),
// // // //     );
// // // //   }
// // // // }