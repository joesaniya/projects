// @dart=2.9
import 'package:flutter/material.dart';
import 'package:abhi_flutter_alertdialog/abhi_flutter_alertdialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog'),
        ),
        body: App(),
      ),
    );
  }
}

class App extends StatefulWidget {
  @override
  AppState createState() => new AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
                child: const Text('Alert'),
                onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog1(
                        context: context,
                        title: 'Logout',
                        content: 'Are you sure you want to exit!!!',
                        action1: 'cancel',
                        action2: 'yes',
                        function1: () => functionA(),
                        function2: () => functionB(context),
                        div: false,
                        txtAlign: 2,
                        radius: 0.0,
                        boxColor: Colors.green,
                        btnTxtColor: Colors.white,
                        txtColor: Colors.white,
                      ),
                    )
            ),
          )


        ],
      ),
    ));
  }

  functionA() {
    print('Yes');
  }

  functionB(BuildContext context) {
    print('cancel');
    Navigator.pop(context);
  }
}