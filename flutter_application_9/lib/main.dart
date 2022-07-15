import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SimpleForm(),
    );
  }
}

class SimpleForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
//          primary: true,
          body: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 0,
                ),
//            Container(height: 0,),
                Container(
                  height: 38,
                  margin: EdgeInsets.all(6),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                      helperText: 'hi'
//                  errorStyle: TextStyle(fontSize: 0, height: 0),
                    ),
                    validator: (value) => (value!.isEmpty) ? '**' : null,
                  ),
                ),
                FlatButton(
                  child: Text('Submit'),
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                )
              ],
            ),
          )),
    );
  }
}




// import 'package:flutter/material.dart';

//   void main() {
//       runApp(
//         MaterialApp(
//           home: MyClass(),
//         ),
//       );
//     }

// class MyClass extends StatefulWidget {
//   @override
//   _MyClassState createState() => new _MyClassState();
// }

// class _MyClassState extends State<MyClass> with SingleTickerProviderStateMixin {
//   TextEditingController nameTextEditingController = TextEditingController();
//   String? _labelText;

//   @override
//   void initState() {
//     super.initState();
//     nameTextEditingController.addListener(_hasStartedTyping);
//   }

//   void _hasStartedTyping() {
//     setState(() {
//       if (nameTextEditingController.text.isNotEmpty) {
//         _labelText = 'Nameee';
//       } else {
//         _labelText = null;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextFormField(
//                 keyboardType: TextInputType.text,
//                 autofocus: false,
//                 textAlign: TextAlign.start,
// //                onChanged: (v){
// //                  setState(() {
// //                    if(v.isNotEmpty){
// //                      _labelText = 'Name';
// //                    }else{
// //                      _labelText = null;
// //                    }
// //                  });
// //
// //                },
//                 textInputAction: TextInputAction.done,
//                 controller: nameTextEditingController,
//                 style: TextStyle(
//                     color: Colors.black87,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500),
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.symmetric(vertical: 15),
//                   labelText: _labelText,
//                   hintText: 'Name',
//                   hintStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                   labelStyle: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Colors.black, width: 1)),
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }