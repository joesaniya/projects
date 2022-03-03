import 'package:firebase_acc_demo/Methods.dart';
import 'package:flutter/material.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({ Key? key }) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email= TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isloading=false;


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: isloading ?
        Center(
          child: Container(
            height: size.height/20,
            width: size.width/20,
            child: CircularProgressIndicator(),
          ),
        )
       :SingleChildScrollView
      (
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
                  'Create account to Continue!!',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
            ),
            SizedBox(
              height: size.height/20,
            ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 18.0),
               child: Container
            (
                child: field
                (
                  size,'name',
                  Icons.account_box,
                  _name
                )
            ),
             ),
            Container
            (
              child: field
              (
                size,'email',
                Icons.account_box,
                _email
              )
            ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical:15.0),
               child: Container
            (
                child: field
                (
                  size,'Password',
                  Icons.lock,
                  _password
                )
            ),
             ),
             SizedBox(
               height: size.height/20,
             ),
             customButton(size),
             GestureDetector(
               onTap: () => Navigator.pop(context),
               child: Text('Login',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                ),
               ),
             )
          ],
        ),
      ),
    );
  }

Widget customButton(Size size)
  {
    return GestureDetector(
      onTap: (){
        if(
          _name.text.isNotEmpty &&
          _email.text.isNotEmpty &&
          _password.text.isNotEmpty
        )
        {
          setState(() {
            isloading = true;
          });
          createAccount(_name.text, _email.text, _password.text).
          then((user) {
            if(user != null)
            {
              setState(() {
                isloading = false;
              });
              print('Login Successfull!');
            }
            else{
              print('Login Failed!!');
            }
          });
        }
        else{
          Text('Enter Specific field Values');
        }
      },
      child: Container(
        height: size.height/14,
        width: size.width/1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue
        ),
        alignment: Alignment.center,
        child: Text('Create Account',
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