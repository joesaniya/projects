import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<User?> createAccount(String name,String email,String password) async{
  FirebaseAuth _auth =FirebaseAuth.instance;

  try
  {
    User? user = (await _auth.createUserWithEmailAndPassword(
      email: email, 
      password: password
    )).user;

    if(user!=null)
    {
      print("Account Created Successfully");
      return user;
    }
    else
    {
      print("Account Creation Failed!!");
    }
  }
  catch(e)
  {
    print("Account creation error");
    return null;
  }
  
}



Future<User?> logIn(String email, String password) async
{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try
  {
    User? user = (await _auth.signInWithEmailAndPassword(
      email: email, password: password
    )).user;

    if(user != null)
    {
      print('Login Sucessfull!!');
      return user;
    }
    else
    {
      print('Login Failed!');
      return user;
    }
  }
  catch(e)
  {
    print("login error");
    return null;
  }

}


Future logout() async
{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try
  {
    await _auth.signOut();
  }
  catch(e)
  {
    print("Sign out error");
  }
  
}