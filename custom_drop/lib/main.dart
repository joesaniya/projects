import 'package:flutter/material.dart';

import 'helper/dialog_helper.dart';

void main() {
  runApp
  (
    MaterialApp(home: DropDownDemo())
  );
}

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: DropdownButton<String>(
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
                      DialogHelper.exit(context);
                    },
                  ),
               
                ),

              );
            }).toList(),
            hint: Text(
              "Please choose a project",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (String? value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}