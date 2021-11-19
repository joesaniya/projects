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
      // const uri='http://tumblr.com/new/chat/share/tool?canonicalUrl=http://cats.com';
      // const uri='http://tumblr.com/widgets/share/tool?canonicalUrl=http://cats.com';
        // const uri='https://www.tumblr.com/new/chat/link/data-title=hiiii';
        
    // const uri = 'https://www.tumblr.com/new/quote/share/tool/link';

    // const uri='tumblr://x-callback-url/link?title=Bryan&url=${responseData['www.tumblr.com']}&description=www.google.com';

    const uri='http://www.tumblr.com/share/link?url=[www.tumblr.com]&amp;name=[hi]&amp;description=[hi]';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
         throw 'Could not launch $uri';
    }
  }


  //  _textMe() async {
  //   // Android
  //   const uri = 'sms:+39 348 060 888?body=hello%20there';
  //   if (await canLaunch(uri)) {
  //     await launch(uri);
  //   } else {
  //     // iOS
  //     const uri = 'sms:0039-222-060-888?body=hello%20there';
  //     if (await canLaunch(uri)) {
  //       await launch(uri);
  //     } else {
  //       throw 'Could not launch $uri';
  //     }
  //   }
  // }

// _launchURLApp() async {
// final String msg="hi";
//   const url = 'https://www.linkedin.com/feed/share/?text=jebas';
//   if (await canLaunch(url)) {
//     await launch(url,forceWebView: false,forceSafariVC: true,);
//   } else {
//     throw 'Could not launch $url';
//   }
// }