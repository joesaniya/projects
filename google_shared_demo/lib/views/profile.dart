import 'package:flutter/material.dart';
import '../constant.dart';
import '../localdb.dart';
import '../services/auth.dart';
import './login.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  SignOutMethod(context) async
  {
    await signOut();
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(constant.img),),
              Text(constant.name),
              Text(constant.email),
              ElevatedButton(onPressed: () {
                SignOutMethod(context);
              }, child: Text("SIGN OUT"))
            ],
          ),
        ),
      ),
    );
  }
}
