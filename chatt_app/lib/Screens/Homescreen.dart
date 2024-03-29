import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  // const Homescreen({ Key? key }) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{

  late TabController _controller;
  void initState()
  {
    super.initState();
    _controller=TabController(
      length: 4,
      vsync: this,
      initialIndex: 0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chattie'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search)
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),

    );
  }
}