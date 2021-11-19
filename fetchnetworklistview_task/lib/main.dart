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
 
  // final String apiURL = 'https://jsonplaceholder.typicode.com/users';
 
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
        title: Text('Fetching a Data'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<GetUsers>>(
        future: fetchJSONData(),
        builder: (context, snapshot) {
 
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
 
          return ListView(
            children: snapshot.data!
            .map((user) => ListTile(
                  title: Text(user.name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  onTap: (){ print(user.name); },
                  subtitle: Text(user.phoneNumber,style: TextStyle(fontSize: 18),),
                  // leading: CircleAvatar(
                  //   backgroundColor: Colors.green,
                  //   child: Text(user.name[0],
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 20.0,
                  //   )),
                  // ),
                ),
              )
            .toList(),
          );
        },
      ),
    );
  }
}





// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Album {
//   final String name;
//   final String email;
  
//   // final int userId;
//   // final int id;
//   // final String title;

//   Album({
//     required this.name,
//     required this.email,
//     // required this.userId,
//     // required this.id,
//     // required this.title,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       name:json['name'],
//       email:json['email']

//       // userId: json['userId'],
//       // id: json['id'],
//       // title: json['title'],
//     );
//   }
// }
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {


 
//   List k=[];
// @override
// void initState(){
//   fetchAlbum().whenComplete((){
//           setState(() {});
//        });
//   super.initState();

// }

//   Future<Album> fetchAlbum() async {
    

//     final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//     var jsonData=jsonDecode(response.body);
//     if(response.statusCode==200)
//     {
//       // List<Album> Albums=[];
//       // for(var k in jsonData)
//       // {
//       //   Album album=Album(k["userId"],k["id"],k["title"]);
//       // }

//       List jsonResponse=jsonDecode(response.body);
//       setState(() {
//           k = jsonResponse;
//       });
    
//       // print("sample $k");
//       return k.map((Album) => new Album.fromJson(Album)).toList();
//     }
//     else
//     {
//       throw Exception('Failed to load album');
//     }

    
//   // if (response.statusCode == 200) {
//   //   return Album.fromJson(jsonDecode(response.body));
//   // } else {
//   //   throw Exception('Failed to load album');
//   // }
// }



//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//         title:Text('Fetching a data'),
//         centerTitle: true,
//       ),
//       body:  k.isEmpty?Center(child: CircularProgressIndicator()):ListView.builder(
//         itemCount: k.length,
//         itemBuilder: (context, index)
//         {
//           return
          
//           Card(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   // return Album.fromJson,
//                  Text(k[index]['name'],style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
//                  Text(k[index]['email'],style: TextStyle(color: Colors.grey.shade600,fontSize: 21),)
//                 //  Text(k[index]['userId']),

//                   // Text(Album[index].id),
//                   // Text(Album[index].title),
//                   // // Text('hi'),
//                 ],
//               ),
//             ),
//           );
//         }
        
//         ),
//       ),
   
      
//     );
//   }
// }
