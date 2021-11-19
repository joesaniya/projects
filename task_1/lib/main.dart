import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.teal,
        body:SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          const CircleAvatar( 
            backgroundColor: Colors.grey,
            radius: 50.0,
            child:CircleAvatar(backgroundImage: AssetImage('assets/images/photo2.jpg',),radius: 45.0),
            
            
          ),
          const Text('Jenslin',style: TextStyle(fontFamily:'Pacifico',
                                        fontSize: 40.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
          ),
          ),
          const Text('FLUTTER DEVELOPER',style: TextStyle(fontFamily:'TitilliumWeb',
                                        fontSize: 20.0,
                                        color:Colors.white30,
                                        fontWeight: FontWeight.w500,
                    
          ),
          ),
          const SizedBox(
            height:10,
          ),
          Container(
          height:1.0,
          width:150.0,
          color:Colors.red),
          SizedBox(
            height:10,
          ),
          Container(
            height:50.0,
            width:double.infinity,

            child:Card(shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),margin: EdgeInsets.only(left: 50.0,right:50.0,), child:Row(children:
             [
              SizedBox(width:80,),
              Icon(Icons.phone,color:Colors.black,size: 15.0,),
              SizedBox(
                width: 30,
              ),
              Text('9876533210',style: TextStyle(
                                        fontSize: 20.0,
                                        color:Colors.pink,
                                        fontWeight: FontWeight.w500,
                    
          ),
          ),

            ],
            ))),
            SizedBox(
              height:20,
            ),
            Container(
            height:50.0,
            width:double.infinity,

            child:Card(shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),margin: EdgeInsets.only(left: 50.0,right:50.0,), child:Row(children:
             [
              SizedBox(width:80,),
              Icon(Icons.email,color:Colors.black,size: 15.0,),
              SizedBox(
                width: 30,
              ),
              Text('Mail Id',style: TextStyle(
                                        fontSize: 20.0,
                                        color:Colors.pink,
                                        fontWeight: FontWeight.w500,
                    
          ),
          ),

            ],
            )))
            
          
          // Icon(Icons.phone,color:Colors.white,size: 50.0,),
          // Icon(Icons.add_a_photo,color:Colors.white,size: 50.0,),
          
          

          //  Container(
          //   padding: EdgeInsets.all(10.0),
          //   color: Colors.white,
          //   margin:EdgeInsets.symmetric(vertical: 10.0,
          //                               horizontal: 25.0),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.phone,
          //         color.Colors.teal,
          //       ),

          // ],))
      
      ],
      )
      ),
      ), 
    );
  }
}

