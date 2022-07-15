import 'package:flutter/material.dart';
import '/components/login_screen/form_component.dart';
import '/utilities/hadwin_markdown_viewer.dart';

import '/screens/sign_up_screen.dart';

import '/utilities/slide_right_route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Widget helpInfoContainer = Container(
      child: Center(
        child: InkWell(
          child: Text(
            'Having trouble logging in?',
            style: TextStyle(fontSize: 14, color: Color(0xFF929BAB)),
          ),
          onTap: getLoginHelp,
        ),
      ),
      width: double.infinity,
      height: 36,
    );

    Widget signUpContainer = Container(
      child: Center(
        child: InkWell(
          child: Text(
            'Sign up',
            style: TextStyle(fontSize: 14, color: Color(0xFF929BAB)),
          ),
          onTap: goToSignUpScreen,
        ),
      ),
      width: double.infinity,
      height: 36,
    );
    List<Widget> loginScreenContents = <Widget>[
      _spacing(64),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Image.asset('assets/images/hadwin_system/hadwin-logo-with-name.png'),
      ),
      _spacing(64),
      LoginFormComponent(),
      _spacing(30),
      helpInfoContainer,
      _spacing(10),
      signUpContainer
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: loginScreenContents,
        ),
        padding: EdgeInsets.all(45),
      
      ),

    
    );
  }

  void getLoginHelp() {
    Navigator.push(
        context,
        SlideRightRoute(
            page: HadWinMarkdownViewer(
                screenName: 'Login Help',
                urlRequested:
                    'https://raw.githubusercontent.com/brownboycodes/HADWIN/master/docs/HADWIN_WIKI.md')));
  }

  void goToSignUpScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  SizedBox _spacing(double height) => SizedBox(
        height: height,
      );
}
