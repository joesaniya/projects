import 'package:flutter/material.dart';
import 'package:flutter/services.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    // final appTitle = 'Flutter Basic Alert Demo';  
    return MaterialApp(  
      // title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('How to play'),  
          centerTitle: true,
        ),  
        body: MyView(),  
      ),  
    );  
  }  
}  
class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
       var width = MediaQuery.of(context).size.width;
          var size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Center(
        child: RaisedButton(
          child: Text('Alert Dialog'),
          onPressed: () {
            _showDialog(context);
          },
        ),
      ),
    );
  }
}

  
void _showDialog(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
       var width = MediaQuery.of(context).size.width;
          var size = MediaQuery.of(context).size;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var profile_edit_toolbar_color=Color(0xff4595f6);
      // Container(
      //   color: Colors.blue[100],
      //     height: 250,
      //     width: 620,
      //     transform: Matrix4.skewX(-0.1) ,
      //     // child: Image.asset('assets/images/pic.jpeg'),
      //   );
      return Dialog(
    backgroundColor: Colors.transparent,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(topRight:Radius.circular(32.0))
        // ),
        child: Container(
        color: Colors.transparent,
          height: height*0.7,
          width: width*0.5,
          transform: Matrix4.skewX(-0.1) ,
          child: Stack(
            overflow: Overflow.clip,
            children: [
              Container(   
                height: height*0.7,
                width: width*0.5,
                child: Image.asset('assets/images/pic.jpeg', fit: BoxFit.fill,))
            ],
          ),
          // child: Image.asset('assets/images/pic.jpeg'),
        ),
        
        
        
      );
    },
  );
}


