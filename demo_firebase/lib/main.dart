
import 'package:demo_firebase/alldata.dart';
import 'package:demo_firebase/imagefile.dart';
import 'package:demo_firebase/imagepic.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController sampledata1 = new TextEditingController();

  TextEditingController sampledata2 = new TextEditingController();

  TextEditingController sampledata3 = new TextEditingController();

  // final databaseReference = Firestore.instance;
  bool _validate = false;

  @override
  void dispose() {
    sampledata1.dispose();
    sampledata2.dispose();
    sampledata3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload data'),
      ),
      body: Container(
        padding:EdgeInsets.all(40.0),
        child: Column(
          children: [
            TextFormField(
              controller: sampledata1,
              decoration: InputDecoration(
                hintText: 'Sample Data 1',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: sampledata2,
              decoration: InputDecoration(
                hintText: 'Sample Data 2',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: sampledata3,
              decoration: InputDecoration(
                hintText: 'Your Good Name!',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
            // onPressed: addData,
              onPressed: (){
                setState(() {
                  sampledata1.text.isEmpty ? _validate = true : _validate = false;
                  sampledata2.text.isEmpty ? _validate = true : _validate = false;
                  sampledata3.text.isEmpty ? _validate = true : _validate = false;
                });
                Map <String,dynamic> data={"field1":sampledata1.text,"field2":sampledata2.text,"field3":sampledata3.text};
                FirebaseFirestore.instance.collection("test").add(data).then((data) {
                  print(data);
                  print("Success!!");
                  print(data);
                }).catchError((onError)
                {
                  print('error');
                }
                );
              }, 
              child: Text('Submit',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
              color: Colors.purple,
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
            // onPressed: addData,
              onPressed: ()async{
                DocumentSnapshot variable = await FirebaseFirestore.instance.collection('test').doc('hTnU4gccWwzgcyxbh8v9').get();//only one document value will be get
                print('Sample Data 1 : ${variable['field1']}');
                print('Sample Data 2 : ${variable['field2']}');
                print('Sample Data 3 : ${variable['field3']}');
              }, 
              child: Text('Display data ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
              color: Colors.purple,
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> AllData()));
              }, 
              child: Text('get all data',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
              color: Colors.purple,
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> ImageFile()));
              },
            child: Text('Image Picker',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber)),
            color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}

