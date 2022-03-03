import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hungry/views/screens/page_switcher.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/custom_text_field.dart';
import 'package:hungry/views/widgets/modals/login_modal.dart';

class RegisterModal extends StatefulWidget {
  @override
  _RegisterModalState createState() => _RegisterModalState();
}

class _RegisterModalState extends State<RegisterModal> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name, _email, _password,_image;

  getProfileImage()
  {
    if(_auth.currentUser.photoURL!= null)
    {
      return Image.network(_auth.currentUser.photoURL,height: 80,width: 50,);
    }
    else{
      return Icon(Icons.account_circle,size:70);
    }
  }

  checkAuthentication() async {
    _auth.authStateChanges().listen((user) async {
      print('Check Authentication');
        if (user != null) {
        //   Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => RegisterModal())
        // );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageSwitcher())
        );
        // Navigator.pushReplacementNamed(context, "/");
      }
      // else{
      //   // Navigator.pushReplacementNamed(context, "/");
      //     Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => RegisterModal())
      //   );
      // }
      // if (user == null) {
      //     Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => RegisterModal())
      //   );
      //   // Navigator.push(
      //   //   context,
      //   //   MaterialPageRoute(builder: (context) => PageSwitcher())
      //   // );
      //   // Navigator.pushReplacementNamed(context, "/");
      // }
    });
  }

  @override
  void initState() {
    super.initState();
   // this.checkAuthentication();
  }

  RegisterModal() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: _email, password: _password);
        if (user != null) {
          print('sign up');
          // UserUpdateInfo updateuser = UserUpdateInfo();
          // updateuser.displayName = _name;
          //  user.updateProfile(updateuser);
          await _auth.currentUser.updateProfile(displayName: _name);
          // await Navigator.pushReplacementNamed(context,'/') ;
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageSwitcher()),
          );

        }
      } catch (e) {
        showError(e.message);
        print(e);
      }
    }
  }

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*75/100,
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            physics: BouncingScrollPhysics(),
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                    width: MediaQuery.of(context).size.width * 35 / 100,
                  margin: EdgeInsets.only(bottom: 20),
                  height: 6,
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
                ),
                ),
                 Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: 'inter'),
                ),
              ),
              SingleChildScrollView(
                child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Name';
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person),
                          ),
                          onSaved: (input) => _name = input),
                    ),
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Email';
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                          onSaved: (input) => _email = input),
                    ),
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input.length < 6)
                              return 'Provide Minimum 6 Character';
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                          onSaved: (input) => _password = input),
                    ),

                      Container(
                margin: EdgeInsets.only(top: 32, bottom: 6),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: RegisterModal,
                  // onPressed: () {
                  //   Navigator.of(context).pop();
                  //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PageSwitcher()));
                  // },
                  child: Text('Register', style: TextStyle(color: AppColor.secondary, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'inter')),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: AppColor.primarySoft,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                    isScrollControlled: true,
                    builder: (context) {
                      return LoginModal();
                    },
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Have an account? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'inter',
                          ),
                          text: 'Log in')
                    ],
                  ),
                ),
              ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
              )
            ],
          ),
        )
      ],
      );
  }

}


// class RegisterModal extends StatefulWidget {

//   @override
//   _RegisterModalState createState() => _RegisterModalState();
// }

// class _RegisterModalState extends State<RegisterModal> {

//   final _formKey = GlobalKey<FormState>();
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("Users");
//   TextEditingController emailController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController ageController = TextEditingController();
  
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//    children: [
//      Container(
//        width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height*75/100,
//           padding: EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
//           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//           child: ListView(
//             shrinkWrap: true,
//             padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//             physics: BouncingScrollPhysics(),
//             children: [
//                Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * 35 / 100,
//                   margin: EdgeInsets.only(bottom: 20),
//                   height: 6,
//                   decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
//                 ),
//               ),
//               // header
//               Container(
//                 margin: EdgeInsets.only(bottom: 24),
//                 child: Text(
//                   'Get Started',
//                   style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: 'inter'),
//                 ),
//               ),
//               Container(
//                 child: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(20.0),
//             child: TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: "Enter User Name",
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//               // The validator receives the text that the user has entered.
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Enter User Name';
//                 }
//                 return null;
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(20.0),
//             child: TextFormField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: "Enter Your Name",
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//               // The validator receives the text that the user has entered.
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Enter Your Name';
//                 }
//                 return null;
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(20.0),
//             child: TextFormField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 labelText: "Enter Password",
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//               // The validator receives the text that the user has entered.
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Password';
//                 }
//                 return null;
//               },
//             ),
//           ),

//           Padding(
//             padding: EdgeInsets.all(20.0),
//             child: ElevatedButton(
//             style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue)),
//             onPressed: () {
//             if (_formKey.currentState.validate()) {
//               registerToFb();
//                 // PageSwitcher();
//             }
//             },
//             child: Text('Submit'),
// ),
//           )
//               ],
//             ),
//             )
//       ),
//               )
//           ],),
//      )
//    ],
//     );
//   }

//   void registerToFb() {
//     firebaseAuth
//         .createUserWithEmailAndPassword(
//             email: emailController.text, password: passwordController.text)
//         .then((result) {
//       dbRef.child(result.user.uid).set({
//         "email": emailController.text,
//         "age": ageController.text,
//         "password": passwordController.text
//       }).then((res) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => PageSwitcher()
//           // Home(uid: result.user.uid)
//         ),
//         );
//       });
//     }).catchError((err) {
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text("Error"),
//               content: Text(err.message),
//               actions: [
//                 TextButton(
//                   child: Text("Ok"),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 )
//               ],
//             );
//           });
//     });
//   }
// }-->normal account










// class RegisterModal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height * 85 / 100,
//           padding: EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
//           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//           child: ListView(
//             shrinkWrap: true,
//             padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//             physics: BouncingScrollPhysics(),
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * 35 / 100,
//                   margin: EdgeInsets.only(bottom: 20),
//                   height: 6,
//                   decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
//                 ),
//               ),
//               // header
//               Container(
//                 margin: EdgeInsets.only(bottom: 24),
//                 child: Text(
//                   'Get Started',
//                   style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: 'inter'),
//                 ),
//               ),
//               // Form
//               CustomTextField
//               (
//                 title: 'Email', hint: 'youremail@email.com'
//               ),
//               CustomTextField(title: 'Full Name', hint: 'Your Full Name', margin: EdgeInsets.only(top: 16)),
//               CustomTextField(title: 'Password', hint: '**********', obsecureText: true, margin: EdgeInsets.only(top: 16)),
//               CustomTextField(title: 'Retype Password', hint: '**********', obsecureText: true, margin: EdgeInsets.only(top: 16)),
//               // Register Button
//               Container(
//                 margin: EdgeInsets.only(top: 32, bottom: 6),
//                 width: MediaQuery.of(context).size.width,
//                 height: 60,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PageSwitcher()));
//                   },
//                   child: Text('Register', style: TextStyle(color: AppColor.secondary, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'inter')),
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                     primary: AppColor.primarySoft,
//                   ),
//                 ),
//               ),
//               // Login textbutton
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                   showModalBottomSheet(
//                     context: context,
//                     backgroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//                     isScrollControlled: true,
//                     builder: (context) {
//                       return LoginModal();
//                     },
//                   );
//                 },
//                 style: TextButton.styleFrom(
//                   primary: Colors.white,
//                 ),
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Have an account? ',
//                     style: TextStyle(color: Colors.grey),
//                     children: [
//                       TextSpan(
//                           style: TextStyle(
//                             color: AppColor.primary,
//                             fontWeight: FontWeight.w700,
//                             fontFamily: 'inter',
//                           ),
//                           text: 'Log in')
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

