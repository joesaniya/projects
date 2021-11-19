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
        leading: Icon(Icons.home),
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
                        MaterialPageRoute(builder: (context)=>DetailPage(user.name,user.id))
                      );
                      print(user.name); 
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
 int id;
DetailPage( this.name, this.id);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
 // get name => null;
// String name = "demo";
late String name=widget.name;
late String text=widget.name;
late int id=widget.id;
late int num=widget.id;

void _setText()
{
  setState(() {
    text=widget.name;
    num=widget.id;
    
  });
}

 
  Future<GetUsers> fetchJSONData(String name, String textvo) async {
 
    // var jsonResponse = await http.get(apiURL);
    final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/users/widget.id'));
 
    if (response.statusCode == 200) {
      return GetUsers.fromJson(jsonDecode(response.body));
    
    } else {
      throw Exception('Failed to load data from internet');
    }
  } 
  Future<GetUsers> updateGet(String name) async {
    print("updte cal");
  final response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/users/${widget.id}'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': myController.text,
   //   'id':_controller.text,
    }),
  );
  var data = json.decode(response.body);

  print(response.body);

 

  if (response.statusCode == 200) {
    setState(() {
     widget.name= data['name'];
    });

    print("name = $name");

 return GetUsers.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update album.');
  }
}

Future<http.Response> deleteAlbum(String id) async {
  final http.Response response = await http.delete(
    Uri.parse('https://jsonplaceholder.typicode.com/users/${widget.id}'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  return response;
}
  
  
  late Future<GetUsers> _futureGetUsers;
  late Future<GetUsers> _futureAlbum;
  final myController=TextEditingController();
  final _controller=TextEditingController();

  @override
  void initState()
  {
    super.initState();
    setState(() {
        //  name = widget.name;
        // name=myController.text;
        _futureGetUsers=fetchJSONData(myController.text,_controller.text);
        _futureAlbum = fetchJSONData(myController.text,_controller.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    var num;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Update Data'),
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
          padding: EdgeInsets.all(8.0),
          
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
                             updateGet(name);
                           });
                         },
                        //  onPressed: _setText,
                         child: Text('update'),
                       ),
                       SizedBox(
                         height: 10.0,
                       ),
                       Text(
                         widget.name,style: TextStyle(fontSize: 22),
                        ),
                        
                        
                  //       ElevatedButton(
                  // child: const Text('Delete Data'),
                  //     onPressed: () {
                  //       setState(() {
                  //         var snapshot;
                  //         _futureAlbum =deleteAlbum(snapshot.data!.id.toString()) as Future<GetUsers>;
                  //       });
                  //     },
                  //   ),
                        

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

class $widget {
  static var num;
}
