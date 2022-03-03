import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
   late TabController _controller;
  
  @override
  void initstate()
  {
    super.initState();
    _controller=TabController(
      length: 4,
      vsync: this,
      initialIndex: 0
      );
      setState(() {
        
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Chattie'),
        actions: [
          IconButton
          (
            onPressed: (){}, 
            icon: Icon(Icons.search)
          ),
          IconButton
          (
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
          ),
        ],
      bottom: TabBar(
        controller: _controller,
        tabs: [
          Tab(icon: Icon(Icons.camera),),
          Tab(text: "CHATS",),
          Tab(text: "STATUs",),
          Tab(text: "CALLS",)

        ],
      ),
      ),
    );
  }
}