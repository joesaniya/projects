import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hungry/views/screens/page_switcher.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/custom_text_field.dart';
import 'package:hungry/views/widgets/modals/register_modal.dart';

class LoginModal extends StatefulWidget {
  @override
  _LoginModalState createState() => _LoginModalState();
}

class _LoginModalState extends State<LoginModal> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email, _password;

  checkAuthentification() async {
    print("checkAuthentification");
    _auth.authStateChanges().listen((user) {
      if (user != null) {
        print(user);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => PageSwitcher())
        // );
        Navigator.pushReplacementNamed(context, "/");
      }
    });
  }

  @override
  void initState() {
    super.initState();
 //   this.checkAuthentification();
  }

  Login() async {
    print('LoginModal');
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        print('try 1');
        await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);
            print('try 2');
             Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageSwitcher()),
          );
            // Navigator.pushReplacementNamed(context, "/");
      } catch (e) {
        showError(e.message);
        print(e);
      }
    }
  }

  showError(String errormessage) {
    print('show error');
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

  navigateToSignUp() async {
    print('navigateToSignUp');
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterModal()));
  }

  @override
  Widget build(BuildContext context) {
   return Wrap(
     children: [
       Container(
         width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 65 / 100,
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
                  'Login',
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: 'inter'),
                ),
              ),
            //   Container(
            //   child: Form(
            //     key: _formKey,
            //     child: Column(
            //       children: <Widget>[
            //         Container(
            //           child: TextFormField(
            //               validator: (input) {
            //                 if (input.isEmpty) return 'Enter Email';
            //               },
            //               decoration: InputDecoration(
            //                   labelText: 'Email',
            //                   prefixIcon: Icon(Icons.email)),
            //               onSaved: (input) => _email = input),
            //         ),
            //         Container(
            //           child: TextFormField(
            //               validator: (input) {
            //                 if (input.length < 6)
            //                   return 'Provide Minimum 6 Character';
            //               },
            //               decoration: InputDecoration(
            //                 labelText: 'Password',
            //                 prefixIcon: Icon(Icons.lock),
            //               ),
            //               obscureText: true,
            //               onSaved: (input) => _password = input),
            //         ),

            //           Container(
            //     margin: EdgeInsets.only(top: 32, bottom: 6),
            //     width: MediaQuery.of(context).size.width,
            //     height: 60,
            //     child: ElevatedButton(
            //       onPressed: Login(),
            //       // onPressed: () {
            //       //   Navigator.of(context).pop();
            //       //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PageSwitcher()));
            //       // },
            //       child: Text('Register', style: TextStyle(color: AppColor.secondary, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'inter')),
            //       style: ElevatedButton.styleFrom(
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            //         primary: AppColor.primarySoft,
            //       ),
            //     ),
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       Navigator.of(context).pop();
            //       showModalBottomSheet(
            //         context: context,
            //         backgroundColor: Colors.white,
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
            //         isScrollControlled: true,
            //         builder: (context) {
            //           return LoginModal();
            //         },
            //       );
            //     },
            //     style: TextButton.styleFrom(
            //       primary: Colors.white,
            //     ),
            //     child: RichText(
            //       text: TextSpan(
            //         text: 'Have an account? ',
            //         style: TextStyle(color: Colors.grey),
            //         children: [
            //           TextSpan(
            //               style: TextStyle(
            //                 color: AppColor.primary,
            //                 fontWeight: FontWeight.w700,
            //                 fontFamily: 'inter',
            //               ),
            //               text: 'Log in')
            //         ],
            //       ),
            //     ),
            //   ),
            //       ],
            //     ),
            //   ),
            // ),
              Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
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
                    SizedBox(height: 20),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                      onPressed: ()=>Login(),
                      // onPressed: Login(),
                      child: Text('LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      color: AppColor.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
            //         SizedBox(
            //           height: 10.0,
            //         ),
            //           GestureDetector(
            //   child: Text('Create an Account?',style: TextStyle(
            //                 color: AppColor.primary,
            //                 fontWeight: FontWeight.w700,
            //                 fontFamily: 'inter',
            //               ),),
            //   onTap: navigateToSignUp,
            // ),
                TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Forgot your password? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'inter',
                          ),
                          text: 'Reset')
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
       )
   ],);
  }
}


// class LoginModal extends StatelessWidget {
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
//                   'LoginModal',
//                   style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: 'inter'),
//                 ),
//               ),
//               // Form
//               CustomTextField(title: 'Email', hint: 'youremail@email.com'),
//               CustomTextField(title: 'Password', hint: '**********', obsecureText: true, margin: EdgeInsets.only(top: 16)),
//               // Log in Button
//               Container(
//                 margin: EdgeInsets.only(top: 32, bottom: 6),
//                 width: MediaQuery.of(context).size.width,
//                 height: 60,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PageSwitcher()));
//                   },
//                   child: Text('LoginModal', style: TextStyle(color: AppColor.secondary, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'inter')),
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                     primary: AppColor.primarySoft,
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   primary: Colors.white,
//                 ),
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Forgot your password? ',
//                     style: TextStyle(color: Colors.grey),
//                     children: [
//                       TextSpan(
//                           style: TextStyle(
//                             color: AppColor.primary,
//                             fontWeight: FontWeight.w700,
//                             fontFamily: 'inter',
//                           ),
//                           text: 'Reset')
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
