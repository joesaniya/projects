import 'dart:ui';

import 'package:firebase_acc_demo/CreateAccount.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height/20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                // width: size.width/1.1,
                child: IconButton
                  (
                    onPressed: (){}, 
                    icon: Icon(Icons.arrow_back_ios)
                  ),
              ),
              SizedBox(
                // height: size.height/20,
                height: size.height/60,
              ),
              Container(
                width: size.width/1.1,
                child: Text
                  (
                    'Welcome',
                    style: TextStyle
                    (
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              ),
              Container(
                width: size.width/1.1,
                child: Text
                  (
                    'Sign In to Continue!!',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),
                  ),
              ),
              SizedBox(
                height: size.height/10,
              ),
              Container
              (
                child: field
                (
                  size,'email',Icons.account_box,_email
                )
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical:15.0),
                 child: Container
              (
                  child: field
                  (
                    size,'Password',Icons.lock,_password
                  )
              ),
               ),
               SizedBox(
                 height: size.height/10,
               ),
               customButton(size),
      
               SizedBox(
                 height: size.height/8,
               ),
               
               GestureDetector(
                 onTap: () => Navigator.of(context).push(
                   MaterialPageRoute(builder: (_) => CreateAccount())
                 ),
                 child: Text('Create Account',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  ),
                 ),
               )
            ],
          ),
        ),
      ),
    );
  }

  Widget customButton(Size size)
  {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: size.height/14,
        width: size.width/1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue
        ),
        alignment: Alignment.center,
        child: Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget field(Size size,String hintText,IconData icon,TextEditingController cont)
  {
    return Container
    (
      height: size.height/15,
      width: size.width/1.1,
      // padding: EdgeInsets.only(left: 10.0),
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
          )
        ),
      ),
    );
  }

}