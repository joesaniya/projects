import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(
      title: 'Flutter Alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyView(),
    );
  }
}

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to Play'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('How to Play 1'),
              onPressed: () {
                _showDialog(context);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text('How to Play 2'),
              onPressed: () {
                _showDialogg(context);
              },
            )
          ],
        ),
        // child: RaisedButton(
        //   child: Text('Alert Dialog'),
        //   onPressed: () {
        //     _showDialog(context);
        //   },
        // ),
      ),
    );
  }
}

void _showDialogg(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  var size = MediaQuery.of(context).size;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var profile_edit_toolbar_color = Color(0xff4595f6);
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
          margin: EdgeInsets.only(top: 30.0),
          color: Colors.transparent,
          height: height * 0.7,
          width: width * 0.5,
          transform: Matrix4.skewX(-0.1),
          child: Stack(
            overflow: Overflow.clip,
            children: [
              Container(
                  height: height * 0.7,
                  width: width * 0.5,
                  child: Image.asset(
                    'assets/images/pic.jpeg',
                    fit: BoxFit.fill,
                  ))
            ],
          ),
          // child: Image.asset('assets/images/pic.jpeg'),
        ),
      );
    },
  );
}

Color profile_edit_toolbar_color = Color(0xff4595f6);
void _showDialog(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  var size = MediaQuery.of(context).size;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        
          backgroundColor: Colors.transparent,
          child: Container(
            height: height * 0.66,
            width: width * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  transform: Matrix4.skewX(-0.1),
                  height: height * 0.63,
                  width: width * 0.75,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          const Color(0xff1262c5),
                          const Color(0xff2f7fdf),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),

                  //   color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        transform: Matrix4.skewX(-0.00),
                        color: profile_edit_toolbar_color,
                        height: height * 0.13,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'How to play',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 22),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: Container(
                    
                          height: height * 0.44,
                          width: width * 0.67,
                          child: Row(
                         
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '1. Select an event listed below',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: width * 0.018),
                                  ),
                                  Text(
                                    '2. Joining bonus of 10,000 points will be awarded for each event',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: width * 0.018),
                                  ),
                                  Text(
                                    '3. Select your favourite contestants /select your prefered language to play',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: width * 0.018),
                                  ),
                                  Text(
                                    '4. Play tasks under each event daily to win points/Check-in every four hours for bonus points',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: width * 0.018),
                                  ),
                                  Text(
                                    '5. Minimum number of active weeks play is required to win rewards and gifts',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: width * 0.018),
                                  ),
                                  Text(
                                    '6. Grand Prize at end of each event *conditions apply',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: width * 0.018),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )

          //  CustomPaint(painter: CurvedPainter(),
          //   child: Container(height:50,
          //     child: Text("Alert!!")),
          // ) ,
          // shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(32.0))),
          // title: new Text("Alert!!"),
          // content: new Text("You are awesome!"),
          // actions: <Widget>[
          //   new FlatButton(
          //     child: new Text("OK"),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
          );
    },
  );
}
