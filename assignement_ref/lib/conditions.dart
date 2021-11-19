import 'package:flutter/material.dart';

class conditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar
        (
          leading: Icon(Icons.arrow_back),
          title: Text('Terms & Conditions'),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          // child: Text('About Page',style: TextStyle(fontSize: 23),),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Terms and conditions',style: TextStyle(
                  fontSize: 21,fontWeight: FontWeight.w900,
                  decoration: TextDecoration.underline
                ),
                textAlign: TextAlign.center,
                ),
                Text('Important Notes:',style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.left,
                ),
                RichText(
                  text: TextSpan(
                    children: 
                    [
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                      TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15)),
                    ]
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(  
                  child: Text('Decline', style: TextStyle(fontSize: 20),),  
                  onPressed: (){},  
                  color: Colors.red,  
                  textColor: Colors.yellow,  
                  padding: EdgeInsets.all(8.0),  
                  splashColor: Colors.grey,  
                ),
                RaisedButton(  
                  child: Text("Accept", style: TextStyle(fontSize: 20),),  
                  onPressed:(){},  
                  color: Colors.red,  
                  textColor: Colors.yellow,  
                  padding: EdgeInsets.all(8.0),  
                  splashColor: Colors.grey,  
                ) 
                  ],
                )
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}
