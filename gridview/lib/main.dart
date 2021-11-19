import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        backgroundColor:Colors.yellow[100],
        appBar: AppBar(title:Text('Photos',),backgroundColor: Colors.cyan,centerTitle: true,),
        body:Container(
        
          child: GridView.count(
            mainAxisSpacing: 10.0,//vertical(|) Spaces between the images
              primary: false,
              padding: const EdgeInsets.all(10.0),
              crossAxisSpacing: 10.0,//horizontal(--) spaces between the images
              crossAxisCount: 3,
              //scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
  //               decoration: BoxDecoration(
  //                 boxShadow: [
  //                   BoxShadow(
  //                       color: Colors.grey.withOpacity(0.8),
  //                       spreadRadius: 4,
  //                       blurRadius: 1,
  //                       offset: Offset(0, 7), // changes position of shadow
  //     ),
  //   ],
  // ),
                width:150,
                height:150,
                  child: Card(
                    margin:EdgeInsets.all(0.0),
                    elevation: 10.0,//lift the img
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),//curved the image
                      child: Image.asset(
                        'assets/images/pic1.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                width:150,
                height:150,
                  child: Card(
                    margin:EdgeInsets.all(0.0) ,
                    elevation: 10.0,//lift the img
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/pic2.png',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: Card(
                    margin: EdgeInsets.all(0.0),
                    elevation: 10.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/pic4.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: Card(
                    margin: EdgeInsets.all(0.0),
                    elevation:10.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/pic6.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: Card(
                    margin: EdgeInsets.all(0.0),
                    elevation: 10.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/pic3.webp',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: Card(
                    margin: EdgeInsets.all(0.0),
                    elevation: 10.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/pic8.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img1.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img2.jfif',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img3.png',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img4.jfif',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation:10.0,
                      child: Image.asset(
                        'assets/images/img5.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img7.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img6.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img8.jpeg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img9.jpeg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/img10.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/pic8.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150,
                height:150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                      elevation: 10.0,
                      child: Image.asset(
                        'assets/images/pic8.jpg',
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

              
                ],
),
        )
        // body:Center(
        //   child: Container(
        //   height: 600,
        //    color: Colors.yellow[200],
        //    margin: EdgeInsets.all(50.0),  
        //    child: GridView(),
        //   ),
        // ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
