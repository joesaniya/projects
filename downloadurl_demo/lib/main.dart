import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

TextEditingController sampledata1 = new TextEditingController();



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
    });
  }

  Future uploadPic(BuildContext context) async
    {
      print('pic upload call');
      String fileName = basename(_image!.path);
      Reference firebaseStorageRef = FirebaseStorage.instance.ref("demo").child(fileName); //demo->database name, filename->tablename
      UploadTask uploadTask=firebaseStorageRef.putFile(_image!);

      var downurl =await(await uploadTask).ref.getDownloadURL();
      var url=downurl.toString();
      print("Download Url: $url");
      Text('Download Url: $url');

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
                        // child: IconButton(
                        //   onPressed: (){
                        //     getImage();
                        //   }, 
                        //   icon: Icon(
                        //     Icons.camera,
                        //     size:30.0,
                        //   )
                        // ),
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
              // Text(url),

              TextFormField(
                // initialValue: url,
                // onChanged: (url){
                //   setState(() {
                //     url = url ;
                //   });
                // },
                  // controller: sampledata1,
                  decoration: InputDecoration(
                    hintText: 'Download url',
                    border: OutlineInputBorder(
                      borderSide: BorderSide
                      (
                        color: Colors.red, 
                        width: 5.0
                      ),
                    ),
                  ),
              ),

      
              

      
            ],
          ),
        ),
      ),
    );
  }
}
