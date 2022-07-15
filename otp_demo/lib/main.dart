import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

void main() {
  runApp(FlutterPinCodeFields());
}

class FlutterPinCodeFields extends StatefulWidget {
  @override
  _FlutterPinCodeFieldsState createState() => _FlutterPinCodeFieldsState();
}

class _FlutterPinCodeFieldsState extends State<FlutterPinCodeFields> {
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
          title: Text('Pin Code Fields Demo'),
        ),
        body: Container(
          margin:EdgeInsets.only(left:20,right:20),
          child:SingleChildScrollView(
            child:Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Default Pincode Fields',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                PinCodeFields(
                  length: 4,
                  controller: newTextEditingController,
                  focusNode: focusNode,
                  onComplete: (result) {
                    // Your logic with code
                    print(result);
                  },
                ),
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'Obscure Pincode Fields',
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
                  length:4,
                  obscureText: true,
                  obscureCharacter: '❌',
                  onComplete: (text) {
                    // Your logic with pin code
                    print(text);
                  },
                ),
                SizedBox(
                  height: 80.0,
                ),
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
                  fieldHeight:40.0,
                  fieldWidth: 40.0,
                  borderWidth:1.0,
                  activeBorderColor: Colors.pink,
                  activeBackgroundColor: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(10.0),
                  keyboardType: TextInputType.number,
                  autoHideKeyboard: false,
                  fieldBackgroundColor: Colors.black12,
                  borderColor: Colors.black38,
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onComplete: (output) {
                    // Your logic with pin code
                    print(output);
                  },
                ),
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'Animated Pincode Fields',
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
                  animationDuration: const Duration(milliseconds: 200),
                  animationCurve: Curves.easeInOut,
                  switchInAnimationCurve: Curves.easeIn,
                  switchOutAnimationCurve: Curves.easeOut,
                  animation: Animations.SlideInDown,
                  onComplete: (result) {
                    // Your logic with code
                    print(result);
                  },
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
