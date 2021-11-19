import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main()
{
  runApp(
    MaterialApp(
      home: MyAPI(),
    )
  );
}

class MyAPI extends StatefulWidget {
  const MyAPI({ Key? key }) : super(key: key);

  @override
  _MyAPIState createState() => _MyAPIState();
}

class _MyAPIState extends State<MyAPI> {
  late String getData;
  Future fetchData() async{
    http.Response response;
    response= await http.get((Uri.https('jsonplaceholder.typicode.com', 'users'));
  if(response.statusCode==200)
  {
    setState(() {
      getData=response.body;
    });
  }
  }

  void initState()
  {
    super.initState();
    fetchData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
        centerTitle: true,
      ),
      body:Center(
        child:Text(getData.toString(),style:TextStyle(fontSize:29),),
    )
    );
  }
}