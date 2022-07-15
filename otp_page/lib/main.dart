import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";

  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    newTextEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column
          (
            children: 
            [
              Text(
                  'Custom Pincode Fields',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                PinCodeFields(
                  length: 4,
                  fieldBorderStyle: FieldBorderStyle.Square,
                  responsive: false,
                  fieldHeight:72,
                  fieldWidth: 50,
                  borderWidth:1.0,
                  activeBorderColor: Colors.grey,
                  activeBackgroundColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                  keyboardType: TextInputType.number,
                  autoHideKeyboard: false,
                  fieldBackgroundColor: Colors.grey,
                  borderColor: Colors.grey,
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onComplete: (output) {
                    // Your logic with pin code
                    print(output);
                  },
                )
            ],
          ),
          // child: PinCodeTextField(
          //   length: 4,
          //   obscureText: false,
          //   animationType: AnimationType.fade,
          //   pinTheme: PinTheme(
          //     shape: PinCodeFieldShape.box,
          //     borderRadius: BorderRadius.circular(5),
          //     fieldHeight: MediaQuery.of(context).size.height*0.037,
          //     fieldWidth: 40,
          //     activeFillColor: Colors.white,
          //   ),
          //   animationDuration: const Duration(milliseconds: 300),
          //   // backgroundColor: Colors.blue.shade50,
          //   // enableActiveFill: true,
          //   controller: textEditingController,
          //   onCompleted: (v) {
          //     debugPrint("Completed");
          //   },
          //   onChanged: (value) {
          //     debugPrint(value);
          //     setState(() {
          //       currentText = value;
          //     });
          //   },
          //   beforeTextPaste: (text) {
          //     return true;
          //   },
          //   appContext: context,
          // ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'KindaCode',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // 4 text editing controllers that associate with the 4 input fields
//   final TextEditingController _fieldOne = TextEditingController();
//   final TextEditingController _fieldTwo = TextEditingController();
//   final TextEditingController _fieldThree = TextEditingController();
//   final TextEditingController _fieldFour = TextEditingController();

//   // This is the entered code
//   // It will be displayed in a Text widget
//   String? _otp;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('KindaCode'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text('Phone Number Verification'),
//           const SizedBox(
//             height: 30,
//           ),
//           // Implement 4 input fields
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               OtpInput(_fieldOne, true),
//               OtpInput(_fieldTwo, false),
//               OtpInput(_fieldThree, false),
//               OtpInput(_fieldFour, false)
//             ],
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _otp = _fieldOne.text +
//                       _fieldTwo.text +
//                       _fieldThree.text +
//                       _fieldFour.text;
//                 });
//               },
//               child: const Text('Submit')),
//           const SizedBox(
//             height: 30,
//           ),
//           // Display the entered OTP code
//           Text(
//             _otp ?? 'Please enter OTP',
//             style: const TextStyle(fontSize: 30),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Create an input widget that takes only one digit
// class OtpInput extends StatelessWidget {
//   final TextEditingController controller;
//   final bool autoFocus;
//   const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 60,
//       width: 50,
//       child: TextField(
//         autofocus: autoFocus,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         controller: controller,
//         maxLength: 1,
//         cursorColor: Theme.of(context).primaryColor,
//         decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             counterText: '',
//             hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//       ),
//     );
//   }
// }