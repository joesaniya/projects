import 'package:flutter/material.dart';


void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  // late String name;
  // late int password;
  final _emailcontroller = TextEditingController();
  bool isvalid = false;
  // static const String email = 'contact@protocoderspoint.com';
//  final bool isValid = EmailValidator.validate(email);
  late String value;
  final _myFormKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
  final _emailcontroller = TextEditingController();
  bool isvalid = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',style: (TextStyle(fontSize:30, fontWeight:FontWeight.w900)),),
        centerTitle: true,
        foregroundColor: Colors.pinkAccent,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        color: Colors.green[100 ],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Form(
                key:_myFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                        controller: _emailcontroller,
                        
                        onChanged: (text)
                            {
                              value=text;
                            },
                            autofocus: true,
                          
                          decoration: InputDecoration(
                            hintText: "mailid@gmail.com",
                            labelText: "Mail Id",
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.mail_outline_sharp),
                            labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.brown,
                              
                              
                            ),
                            border: OutlineInputBorder(),//adding border
                          ),
                          validator: (value)
                          {
                            // if(value!='Esther@gmail.com')
                            // {
                            //   return 'please provide correct mail id';
                            // }
                            //  return null;

                            if(value == null || value.isEmpty)
                            {
                              return 'please provide email id';
                            }
                            
                            if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                            return 'Please a valid Email';
                            }
                      
                            return null;
                          },
                        ),
                    ),
                      SizedBox(
                        height:20.0,
                      ),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "please enter your  Password",
                            labelText: "Password",
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.brown,
                            ),
                            border: OutlineInputBorder(),//adding border
                            suffixIcon: Icon(Icons.security),
                          ),
                          // onChanged: (v){
                          //   eamil = v;

                          // },
                          validator: (value){
                            // if(value!="123456")
                            // {
                            //   return 'enter correct pwd';
                            // }
                            // return null;
                            if(value!.length<6){
                              return 'password must be 6 characters';
                            }
                            return null;
                          },
                          obscureText: true,//hiding data like pwd
                          keyboardType:TextInputType.number ,
                        ),
                      ),
                      SizedBox(
                      height:20.0,
                    ),
                    RaisedButton(
                      shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),),
                        color:Colors.lightBlue[100],
                        child: Text("Login", style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),),  
                      onPressed: () {
                        if(_myFormKey.currentState!.validate()){
                          if(value == "Esther@gmail.com" && value =="123456"){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage(value:value)   ));
                          }else{
                            print("incorrect email");
                          }


                          
                     
                        }
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage(value:value)
                        // ));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class SubPage extends StatelessWidget {
  late String value;
  SubPage({required this.value} );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile page",
        ),
        centerTitle: true,
      ),
      body:Container(
        height:400,
        width:400,
        child: Card(
          margin: EdgeInsets.all(20.0),
          color: Colors.yellowAccent[100],
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('welcome: $value',style: TextStyle(fontFamily:'Oswald',fontSize: 40.0,color: Colors.redAccent),),
                   CircleAvatar(
                     backgroundColor: Colors.cyan[50],
                   radius: 100,
                     child: CircleAvatar(
                       backgroundImage:AssetImage('assets/images/pic3.jpg'),radius: 90,
                     ),
              
                   ),
                 ],
               )
             ],
        
            // child: Text('welocme: $value',style: TextStyle(fontFamily:'Pacifico',fontSize: 40.0,color: Colors.redAccent),),
            ),
        ),
      )
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //  home: Scaffold(appBar: AppBar(title:Text('DashBoard',),backgroundColor: Colors.cyan,centerTitle: true,),
     
    //  body: Center(
    //    value,
    //   //  child: Row(   mainAxisAlignment: MainAxisAlignment.center,
    //   //    children: [
    //   //      Column(
    //   //        mainAxisAlignment: MainAxisAlignment.center,
    //   //       // crossAxisAlignment: CrossAxisAlignment.center,
    //   //        children: [
    //   //          CircleAvatar(
    //   //            backgroundColor: Colors.cyan,
    //   //            radius: 100,
    //   //              child: CircleAvatar(
    //   //                backgroundImage:AssetImage('assets/images/cat4.jpg'),radius: 90,
    //   //              ),
            
    //   //          ),
    //   //         //  Text('welcome',style: TextStyle(fontFamily:'Pacifico',
    //   //         //                               fontSize: 40.0,
    //   //         //                               color: Colors.yellow,
    //   //         //                               fontWeight: FontWeight.bold,
                                            
    //   //         // ),),
    //   //         // RaisedButton(
    //   //         //       shape: new RoundedRectangleBorder(
    //   //         //             borderRadius: new BorderRadius.circular(30.0),),
    //   //         //         color:Colors.lightBlue[100],
    //   //         //         child: Text("Main Page", style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),),  
    //   //         //       onPressed: () {
    //   //         //         Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
    //   //         //       },
    //   //         //     )
    //   //         // RaisedButton(  
    //   //         //       child: Text('LogIn', style: TextStyle(fontSize: 20.0),),  
    //   //         //       color: Colors.blueAccent,  
    //   //         //       textColor: Colors.white,  
    //   //         //       onPressed: () {
    //   //         //         print('welcome');
    //   //         //         // Text('welcome', style: TextStyle(fontSize: 20.0,color: Colors.yellow,),); 

    //   //         //       },  
    //   //         //     ),  
    //   //         // // RaisedButton(  
    //   //         // //         child: Text("Click Here", style: TextStyle(fontSize: 20),),  
    //   //         // //         color: Colors.red,  
    //   //         // //         textColor: Colors.yellow,  
    //   //         // //         padding: EdgeInsets.all(8.0),  
    //   //         // //         splashColor: Colors.grey,  
    //   //         // //       ), 
    //   //        ],
    //   //      ),
    //   //    ],
    //   //  )
    //  ),
    // //  body: Center(
    // //    child: Container(
    // //      height: 600,
    // //      margin: EdgeInsets.all(20.0),
    // //      color: Colors.greenAccent,
    // //      child: Card(
    // //        main
    // //        child: Row(
    // //          children: [
    // //          CircleAvatar(
    // //          backgroundColor: Colors.grey,
    // //          radius: 150.0,
    // //          )

    // //          ],
    // //        ),
    // //      ),
    // //    ),
    // //  ),

    //  ),
    // );
  }
}