import 'package:flutter/material.dart';
import 'package:nurse_app_ui/screens/explore.dart';
import 'package:nurse_app_ui/theme/appcolor.dart';
import 'package:signature/signature.dart';

class ClockOut extends StatefulWidget {
  const ClockOut({ Key? key }) : super(key: key);

  @override
  State<ClockOut> createState() => _ClockOutState();
}

class _ClockOutState extends State<ClockOut> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.blue
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        // color: Colors.blue,
        color: Colors.white,
        child: Column
        (
          children: 
            [
              PreferredSize
              (
                preferredSize: Size.fromHeight(150.0),
                child: AppBar(
                // backgroundColor: Colors.white.withOpacity(0.9),
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: Padding(
                  padding: const EdgeInsets.only(right:79.0),
                  child: Container
                  (
                    height: 50.0,
                    // color: Colors.amber,
                    child: Center(
                      child: Text('Clock Out',
                      style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black
                      ),
                      ),
                    ),
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ), 
              ),
              Padding(
                padding: const EdgeInsets.only(top:32.0),
                child: Text('Alone Hospital',
                  style: TextStyle(
                    fontFamily: 'PT Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Appcolor.showing
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:32.0,left: 15,right: 15),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  // color: Colors.pink,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.green,
                        width: 200.5,
                        height: double.infinity,
                        // width: double.infinity/2,
                          child: Container
                          (
                            child: Column
                            (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text('hi'),
                              // Text('hi')
                              Expanded
                              (
                                child: Text('Date',
                                style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Appcolor.showing
                                ),
                                )
                              ),
                               Expanded
                              (
                                child: Text('Tue,Oct 25',
                                style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Appcolor.showing
                                ),
                                )
                              )
                            ],
                          )
                          ),
                      ),
                       Container(
                        // color: Colors.grey,
                        width: 180.5,
                        height: double.infinity,
                        // width: double.infinity/2,
                        child: Container
                          (
                            child: Column
                            (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text('hi'),
                              // Text('hi')
                              Expanded
                              (
                                child: Text('Time',
                                style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Appcolor.showing
                                ),
                                )
                              ),
                               Expanded
                              (
                                child: Text('5pm-7pm',
                                style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Appcolor.showing
                                ),
                                )
                              )
                            ],
                          )
                          ),
                      )
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 42,
                    decoration:BoxDecoration(
                      color: Appcolor.Citextbg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:17.81,top: 12,bottom: 14),
                      child: Text('Jesika Roberston',
                      style: TextStyle
                      (
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Appcolor.Citext
                      ),
                      ),
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,top: 30),
                child: Container(
                  // height: 25,
                  height: 18,
                  width: double.infinity,
                  // color: Colors.pink,
                  child: Text('Please sign below:',
                    style: TextStyle
                          (
                            fontFamily: 'PT Sans',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Appcolor.Citext
                          ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15,right: 15,top: 16),
                child: Container(
                  height: 195,
                  // width: 400,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: Signature
                  (
                    width: 350,
                    height: 150,
                    // width: double.infinity,

                    controller: _controller,
                    // height: 173,
                    // width: double.infinity,
                    // width: 194,
                    backgroundColor: Appcolor.Citextbg,
                  ),
                    decoration: BoxDecoration(
                      color: Appcolor.Citextbg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 55.0),
                child: GestureDetector(
                  onTap: (){
                    print('clock Out');
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Explore()),
                      );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                      decoration: BoxDecoration(
                        // color: Appcolor.secondary,
                        color: Appcolor.secondary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                                            // boxShadow: [
                                            //   BoxShadow(
                                            //     offset: Offset(0, 0),
                                            //     blurRadius: 2,
                                            //     spreadRadius: 1,
                                            //     color: Colors.black26,
                                            //   ),
                                            // ],
                      ),
                      child: Center(
                        child: Text('Clock Out',
                        style: TextStyle
                        (
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white
                        ),
                        ),
                      ),
                  ),
                ),
              ),
            ],
        ),
      ),
      // appBar: AppBar(
      //   brightness: Brightness.dark,
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text('My Profile',
      //       style: TextStyle(
      //           fontFamily: 'inter',
      //           fontWeight: FontWeight.w400,
      //           fontSize: 16)),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_ios, color: Colors.black),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),


      // body: Padding(
      //   padding: const EdgeInsets.only(top:56.0,left:15.0,right: 15.0),
      //   child: Container(
      //     color: Colors.amber,
         
      //   ),
      // ),
      
    );
  }
}