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
 
  final String apiURL = 'https://jsonplaceholder.typicode.com/users/';

  Future<List<GetUsers>> fetchJSONData() async {
    print("fetch");
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
  String name;
  int id;
  DetailPage(this.name,this.id);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

final myController=TextEditingController();
late Future<GetUsers> _futureGetUsers;
late Future<GetUsers> _futureAlbum;

late String name=widget.name;
late String text=widget.name;
late int id=widget.id;
late int num=widget.id;

void _setText()
{
  setState(() {
    widget.name=myController.text;
    
  });
}

  Future<GetUsers> fetchJSONData(String text) async {
 
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
    }),
  );

  if (response.statusCode == 200) {
    print("output ${response.body}");
    return GetUsers.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update album.');
  }
}

@override
  void initState() {
    super.initState();
    _futureAlbum = updateGet(myController.text);
    _futureGetUsers=updateGet(myController.text);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Update'),
          centerTitle: true,
        ),
        body:Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                        controller: myController,
                        decoration: InputDecoration(labelText: widget.name),
                        style: TextStyle(fontSize: 32),
                        onChanged: (name){
                          print(name);
                        },
                        
                      ),
              
              RaisedButton(
                        //  onPressed: ()
                        //  {
                        //    setState(() {
                        //      updateGet(myController.text);
                        //    });
                        //  },
                         onPressed: _setText,
                         child: Text('update'),
                       ),
                       Text(
                         widget.name,style: TextStyle(fontSize: 22),
                        ),
            ],
          ),
        )
        ),
    );
  }
}