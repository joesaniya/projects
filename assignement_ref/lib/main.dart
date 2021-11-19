import 'package:assignement_ref/NavBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('Statistics'),
          centerTitle: true,
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover
          ),
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  TextSpan(text:'COVID-19',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.pink)),
                  TextSpan(text: '          '),
                  TextSpan(text:'Statistics',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500))
                ]
              )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                textAlign: TextAlign.justify,
                        text: TextSpan(
                          children: 
                          [
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                            TextSpan(text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                          ]
                        )
                      ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
























