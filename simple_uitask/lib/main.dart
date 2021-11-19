import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
       var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          body: new Container(
            // color: Colors.teal,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('assets/images/pic1.jpg'),
                fit: BoxFit.cover
                 )
            ),
            
            // child: new Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //   Image.asset('assets/images/pic.jpg',),
              
            // ]
            // ),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.maps_home_work_outlined,size: 150,), 
                    Text('vision',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 45,color: Colors.red),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      color: Colors.transparent,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        // color: Colors.transparent,
                          width: 350,
                          height: 410,
                          child: TextField(
                              decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter a search term'
                            ),
                          ),
                      
                      ),
                      
                    ),
                    // Container(
                    //   width: 360,
                    //   height: 419,
                    //   decoration: BoxDecoration(
                    //   border: Border.all(
                    //   color: Colors.red,
                    //   ),
                    // borderRadius: BorderRadius.all(Radius.circular(20))
                    // ),
                    // child: Card(
                      
                    // ),
                    //   // Container(
                    //   //   width: 360,
                    //   //   height: 419,
                    //   //   // color: Colors.white,
                    //   //   decoration: BoxDecoration(
                    //   //     borderRadius: BorderRadius.all(Radius.circular(20))
                    //   //   ),
                    //   // ),
                    // ),
                    
                  ],
                ),
              ],
            ),
          ),
          
           ),
      ),
    );
  }
}

