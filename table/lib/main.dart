import 'package:flutter/material.dart';  
  
void main() {runApp(MyApp());}  
  
class MyApp extends StatefulWidget {  
  @override  
  _TableExample createState() => _TableExample();  
}  
  
class _TableExample extends State<MyApp> {  
  String? _chosenValue;
  bool isVisible = false;
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
          appBar: AppBar(  
            title: Text('Flutter Table Example'),  
          ),  
          body: Center(  
              child: Column(children: <Widget>[  
                Container(  
                  margin: EdgeInsets.all(20),  
                  child: Table(  
                    defaultColumnWidth: FixedColumnWidth(180.0),  
                    // border: TableBorder.all(  
                    //     color: Colors.black,  
                    //     style: BorderStyle.solid,  
                    //     width: 2),  
                    children: [  
                      TableRow( children: [  
                        Column
                        (
                          children:
                          [
                            Text('Category')
                            // Text('Website', style: TextStyle(fontSize: 20.0))
                          ]),  
                        Column(children:[
                          DropdownButton<String>(
            value: _chosenValue,
            //elevation: 5,
            style: TextStyle(color: Colors.black),

            items: <String>[
              'Project 1',
              'Project 2',
              'Project 3',
              'Project 4',
              'Project 5',
              'Project 6',
              'Project 7',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                // child: GestureDetector
                // (
                //   child: Text(value),
                //   onTap: ()
                //   {
                //     print('Clicked:');
                //   },
                // ),
                child: Container(

                  child: TextButton
                  (
                    child: Text(value),
                    onPressed: ()
                    {
                      print('clicked');
                      // DialogHelper.exit(context);
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
               
                ),

              );
            }).toList(),
            hint: Text(
              "Please choose a project",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (String? value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
                          // Text('Tutorial', style: TextStyle(fontSize: 20.0))
                          ]),  
                        // Column(children:[Text('Review', style: TextStyle(fontSize: 20.0))]),  
                      ]),  
                      TableRow( children: [  
                        Visibility
                        (
                            visible: isVisible,
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                           child: Column(
                             
                           ),
                  
                
                        )
                        // Column(children:[Text('Javatpoint')]),  
                        // Column(children:[Text('Flutter')]),  
                        // Column(children:[Text('5*')]),  
                      ]),  
                      TableRow( children: [  
                        Column(children:[Text('Javatpoint')]),  
                        Column(children:[Text('MySQL')]),  
                        // Column(children:[Text('5*')]),  
                      ]),  
                      TableRow( children: [  
                        Column(children:[Text('Javatpoint')]),  
                        Column(children:[Text('ReactJS')]),  
                        // Column(children:[Text('5*')]),  
                      ]),  
                    ],  
                  ),  
                ),  
              ])  
          )),  
    );  
  }  
}  