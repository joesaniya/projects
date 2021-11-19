 import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(home:MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
      child: new RaisedButton(
        onPressed: _textMe,
        child: new Text('Show Flutter homepage'),
      ),
    ),
      
      
    );
  }
}

  _textMe() async {
    // Android
    const uri = 'https://www.linkedin.com/feed/share/?text=jebas';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
         throw 'Could not launch $uri';
    }
  }



// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() => runApp(MaterialApp(home:MyApp()));

// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: new Center(
//       child: new RaisedButton(
//         onPressed: _launchURLApp,
//         child: new Text('Show Flutter homepage'),
//       ),
//     ),
      
      
//     );
//   }
// }


// _launchURLApp() async {
//   const url = 'https://www.linkedin.com/feed/';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }