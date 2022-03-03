import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

  TextEditingController sampledata1 = new TextEditingController();
  TextEditingController sampledata2 = new TextEditingController();
  TextEditingController sampledata3 = new TextEditingController();
  bool _validate = false;

  // final referenceDatabase = FirebaseDatabase.instance;
  // final ref = referenceDatabase.reference();

  // final FirebaseApp app = FirebaseApp(name: '[DEFAULT]');



void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyApp(),
    )
  );
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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  // MyHomePage
  // (
  //   { 
  //     required this.app,
  //   }
  // );
  // final FirebaseApp app;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    File? _image;
  final imagePicker = ImagePicker();

  Future getImage() async
  {
    print('get image');
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      print("printing path to the camera");
      _image = File(image!.path); 
      print(_image);
    });
  }

  // Future getImagegallery() async {
  //     var image = await ImagePicker.pickImage(source: ImageSource.gallery);

  //     setState(() {
  //       _image = image;
  //         print('Image Path $_image');
  //     });
  //   }

  Future getImagegallery() async
  {
    print('get image');
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      print("printing path to the gallery");
      _image = File(image!.path); 
      sampledata3= _image as TextEditingController;
    });
  }

  Future uploadPic(BuildContext context) async
    {
      print('pic upload call');
      String fileName = basename(_image!.path);
      Reference firebaseStorageRef = FirebaseStorage.instance.ref("demo").child(fileName); //demo->database name, filename->tablename
      UploadTask uploadTask=firebaseStorageRef.putFile(_image!);
      TaskSnapshot taskSnapshot = await uploadTask;
      setState(() {
         print('Profile Picture Uploaded');
         Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
      });
      // uploadTask.then((res) {
      //   res.ref.getDownloadURL();
      // });
    }

  @override
  Widget build(BuildContext context) {
    
    final _dbRef = FirebaseDatabase.instance.reference();
    // final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      // key: _scaffoldKey,  
      appBar: AppBar(
        title: Text('Real time database'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.grey,
                      child: ClipOval(
                        child: SizedBox(
                          width: 180.0,
                          height: 180.0,
                          child: (_image != null) ? Image.file(_image!,fit: BoxFit.cover):
                          Image.network("https://wallpaper.dog/large/20469131.jpg",fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60.0),
                        child: IconButton(
                          onPressed: (){
                            getImage();
                          }, 
                          icon: Icon(
                            Icons.camera,
                            size:30.0,
                          )
                        ),
                      ),
                      IconButton(
                      onPressed: (){
                        getImagegallery();
                      }, 
                      icon: Icon(
                        Icons.image,
                        size:30.0,
                      )
                    ),
                    ],
                  ),
                  
                ],
              ),

              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  controller: sampledata3,
                  decoration: InputDecoration(
                    hintText: 'pic path',
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: OutlineInputBorder(
                      borderSide: BorderSide
                      (
                        color: Colors.red, 
                        width: 5.0
                      ),
                    ),
                  ),
              ),


               RaisedButton(
                    onPressed: (){
                      uploadPic(context);
                    },
                    elevation: 4.0,
                    splashColor: Colors.red,
                    child: Text('Save',
                      style: TextStyle(color: Colors.purple,fontSize: 16.0),
                    ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  controller: sampledata1,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: OutlineInputBorder(
                      borderSide: BorderSide
                      (
                        color: Colors.red, 
                        width: 5.0
                      ),
                    ),
                  ),
              ),
               
              SizedBox(
                height: 20.0,
              ),
      
               TextFormField(
                  controller: sampledata2,
                  decoration: InputDecoration(
                    hintText: 'Location',
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: OutlineInputBorder(
                      borderSide: BorderSide
                      (
                        color: Colors.red, 
                        width: 5.0
                      ),
                    ),
                  ),
              ),
      
              SizedBox(
                height: 20.0,
              ),
      
               TextFormField(
                  controller: sampledata3,
                  decoration: InputDecoration(
                    hintText: 'Feedback',
                    errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: OutlineInputBorder(
                      borderSide: BorderSide
                      (
                        color: Colors.red, 
                        width: 5.0
                      ),
                    ),
                  ),
              ),

              SizedBox(
                height: 20.0,
              ),

              FlatButton(
            // onPressed: addData,
              onPressed: (){
                setState(() {
                    //             setState(() {
                    //    print('Profile Picture Uploaded');
                    //    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
                    // });
                  sampledata1.text.isEmpty ? _validate = true : _validate = false;
                  sampledata2.text.isEmpty ? _validate = true : _validate = false;
                  sampledata3.text.isEmpty ? _validate = true : _validate = false;
                 
                  // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Feedback updated successfully!!!')));
                  // _scaffoldKey.currentState.showSnackBar(snackBar); 
                });
                Map <String,dynamic> data={"Name":sampledata1.text,"Location":sampledata2.text,"Feedback":sampledata3.text};
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



//real time database
            //     FlatButton(
            // // onPressed: addData,
            //   onPressed: () async{
            //     print("button Call");
            //     var tableRef = _dbRef.child("sampleData");//sampleData is a database name
            //     await tableRef.child("datas").set( //datas ->is a table name
            //       {
            //         'Name' : "sampledata1.text",
            //         'location' : "sampledata1.text",
            //         'feedback' : "sampledata1.text",
            //       }
            //     );
            //     tableRef.push();
            //     print("Push Called");

            //     setState(() {
            //       sampledata1.text.isEmpty ? _validate = true : _validate = false;
            //       sampledata2.text.isEmpty ? _validate = true : _validate = false;
            //       sampledata3.text.isEmpty ? _validate = true : _validate = false;
            //     });
            //     // Map <String,dynamic> data={"field1":sampledata1.text,"field2":sampledata2.text,"field3":sampledata3.text};
            //     // FirebaseFirestore.instance.collection("test").add(data).then((data) {
            //     //   print(data);
            //     //   print("Success!!");
            //     //   print(data);
            //     // }).catchError((onError)
            //     // {
            //     //   print('error');
            //     // }
            //     // );
            //   }, 
            //   child: Text('Submit',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
            //   color: Colors.purple,
            // ),

      
            ],
          ),
        ),
      ),
    );
  }
}