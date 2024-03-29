import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../localdb.dart';
import '../services/auth.dart';
import 'profile.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_shared/localdb.dart';

class Login extends StatefulWidget {



  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

Future<void> checkUserLog() async
{
  final FirebaseAuth auth = await FirebaseAuth.instance;
  final user = await auth.currentUser;
  if(user != null)
    {
      constant.name = (await LocalDataSaver.getName())!;
      constant.email = (await LocalDataSaver.getEmail())!;
      constant.img = (await LocalDataSaver.getImg())!;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()));
    }
}

  @override
  void initState(){

    checkUserLog();
}



  signInMethod(context) async
  {
    await signInWithGoogle();
    constant.name = (await LocalDataSaver.getName())!;
    constant.email = (await LocalDataSaver.getEmail())!;
    constant.img = (await LocalDataSaver.getImg())!;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login To App"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(Buttons.Google, onPressed:() {
              signInMethod(context);


            })
          ],
        ),
      ),
    );

  }
}
