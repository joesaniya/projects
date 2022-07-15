import 'package:flutter/material.dart';

// void main() {
//   // runApp(const MyApp());
//   void main() => runApp(MaterialApp(home:MyApp()));
// }
void main() => runApp(MaterialApp(home:MyApp()));


class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20))
              
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _flag = !_flag;
                    });
                  },
                  child: Container(
                     decoration: BoxDecoration(
                        color: _flag ? Colors.red : Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                        
                      ),
                    height: 50,
                    width: 150,
                    child: Center(child: Text('click 1')),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _flag = !_flag;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                     decoration: BoxDecoration(
                        color: _flag ? Colors.teal : Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                        
                      ),
                    child: Center(child: Text('click 2')),
                  ),
                )
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _flag = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 setState(() => _flag = !_flag);
//                 print('click1');
//               },
//               // child: Text(_flag ? 'Red' : 'Green'),
//               child: Text('Click 1'),
//               style: ElevatedButton.styleFrom(
//                 primary: _flag ? Colors.red : Colors.teal, // This is what you need!
//               ),
//             ),
//           ),
//             Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 setState(() => _flag = !_flag);
//                 print('click 2');
//               },
//               // child: Text(_flag ? 'Red' : 'Green'),
//               child: Text('Click 2'),
//               style: ElevatedButton.styleFrom(
//                 primary: _flag ? Colors.teal : Colors.green, // This is what you need!
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }