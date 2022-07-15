import 'package:flutter/material.dart';
import 'package:flutter_otp/flutter_otp.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}
FlutterOtp otp = FlutterOtp();

class MyHomePage extends StatelessWidget {


    String phoneNumber = "7639798240"; //enter your 10 digit number
   int minNumber = 1000;
   int maxNumber = 6000;
   String countryCode ="+91"; 

  // const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
    appBar: AppBar(title: Text("send otp using flutter_otp ")),
    body: Container(
      child: Center(
        child: RaisedButton(
         child: Text("Send"),
         onPressed: () {
           // call sentOtp function and pass the parameters

        otp.sendOtp(phoneNumber, 'OTP is : pass the generated otp here ',
            minNumber, maxNumber, countryCode);
      },
    )),
  ),
);
  }
}