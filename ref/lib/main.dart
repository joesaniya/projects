import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Welcome to Flutter'),
        // ),
        // backgroundColor: Colors.blue[100],
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('assets/images/pic1.jpg'),
                fit: BoxFit.cover
                 )
            ),
          child: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Icon(Icons.location_disabled,size:100,color: Colors.white,),
                  ),
                  Text('Login',style: TextStyle(fontSize: 42,fontWeight: FontWeight.w600,color: Colors.white),)
                 
                ],
              ),

                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                  ),
                  Card(
                    margin: EdgeInsets.all(0.0),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  child: Container(
                    width: width*0.99,
                   height: height*0.66,
                    
                    // width: 300,
                    // height: 360,
                    child:Column(children: [
                      Container(
                        margin: EdgeInsets.all(0.0),
                        padding: EdgeInsets.all(40.0),
                        child: Column(children: 
                        [
                          Align(
                          alignment: Alignment.topLeft,
                          child: Text('Account',style: TextStyle(fontSize: 34,fontWeight: FontWeight.w800,color: Colors. blue),
                          textAlign: TextAlign.left),
                        ),
                        SizedBox(
                        height: 10.0,),
                        Align(
                        alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.black, fontSize: 16),
                                children: <TextSpan>[
                                TextSpan(text: 'Already have an account?', style: TextStyle(color: Colors.black)),
                                TextSpan(text:'   '),
                                TextSpan(text: 'Signup', style: TextStyle(decoration: TextDecoration.underline,color: Colors.red))
                                ],
                            ),
                          ),
                        )
                        // Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 17),),
                        ],
                        
                        ),
                        

                        
                        // child: Align(
                        //   alignment: Alignment.topLeft,
                        //   child: Text('Lorem Ipsum',style: TextStyle(fontSize: width*0.06,fontWeight: FontWeight.w800,color: Colors. blue),
                        //   textAlign: TextAlign.left),
                        // ),
      
                      ),

                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: "email@gmail.com",
                              labelText: "E-mail Id",
                              labelStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.black
                              )
                            
                            ),
                          ),
                          SizedBox(
                          height: 20.0,),

                          TextField(
                            decoration: InputDecoration(
                              hintText: "123#4",
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.black
                              )
                            
                            ),
                          ),
                          
                        ],),
                        
                      ),
                      SizedBox(
                      height: 20.0,),
                      RaisedButton(
                child: Text('Sign in',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                color: Colors.indigo[200],
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                elevation: 10.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(child: Text('or Login with',style: TextStyle(fontSize: 24),)),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton.icon(
                    color: Colors.blue,
                    label: Text(
                      '',
                    ),
                    icon: Icon(
                      Icons.facebook_sharp,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
                elevation: 10.0,
                  ),
             RaisedButton.icon(
                    color: Colors.orange,
                    label: Text(
                      '',
                    ),
                    icon: Icon(
                      Icons.call_end_outlined,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
                elevation: 10.0,
                  ),RaisedButton.icon(
                    color: Colors.green,
                    label: Text(
                      '',
                    ),
                    icon: Icon(
                      Icons.g_mobiledata,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
                elevation: 10.0,
                  ),
                ],
              )
              
                      
                      
                      
                      
                      
                    ],)
                ),
                
               ),
                ],
                
                ),

              
              
              ],
              
                
              ),
              
              
            ),
        ),
          
          
          
          
          
        ),
        
  
      

    );
  }
}

