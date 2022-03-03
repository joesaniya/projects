import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:firebase_core/firebase_core.dart';


// void main() async {
// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp();
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:MyApp()
//     )
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//    final _imageUrlController = TextEditingController();

//    @override
//   void dispose() {
//     _imageUrlController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           child: ListView(
//             children: [
              
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }


  TextEditingController _description = new TextEditingController();
  TextEditingController _img = new TextEditingController();

  void initState() {
  _img.addListener(() {
    print('listener');
    final text = _img.text.toLowerCase();
    _img.value = _img.value.copyWith(
      text: text,
      selection: TextSelection(baseOffset: text.length, extentOffset: text.length),
      // composing: TextRange.empty,
      composing: TextRange(start: -1, end: -1)
    );
  });
  // super.initState();
}

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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageFile(),
    );
  }
}


class ImageFile extends StatefulWidget {
  @override
  _ImageFileState createState() => _ImageFileState();
}

class _ImageFileState extends State<ImageFile> {

  File? _image;
  String? imgUrl;
  final imagePicker = ImagePicker();

  Future getImage() async
  {
    print('get image');
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path); 
    });
  }

  Future getImagegallery() async
  {
    print('get image');
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path); 
    });
  }

  Future uploadPic(BuildContext context) async
    {
      print('pic upload call');
      String fileName = basename(_image!.path);
      Reference firebaseStorageRef = FirebaseStorage.instance.ref("users").child(fileName);
      UploadTask uploadTask=firebaseStorageRef.putFile(_image!);

      var downurl =await(await uploadTask).ref.getDownloadURL();
      var url=downurl.toString();
      print("Download Url: $url");
      Text('Download Url: $url');

      TaskSnapshot taskSnapshot = await uploadTask;
      setState(() {
         url = downurl.toString();
         print("setstate url: $url");
         print('TextField: $_img');
                       Map <String,dynamic> data={
                         "description":_description.text,
                         "image":url
                        };
                  FirebaseFirestore.instance.collection("7th dec").add(data).then((data) {
                    print(data);
                    print("Success!!");
                    print(data);
                  }).catchError((onError)
                  {
                    print('error');
                  }
                  );
         print('Profile Picture Uploaded');
         Scaffold.of(context)
         .showSnackBar(SnackBar(content: Text('Profile Picture Uploaded and datas Uploaded successfully!!!')));
      });
      // uploadTask.then((res) {
      //   res.ref.getDownloadURL();
      // });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Builder(
          builder: (context) => Container(
            padding: EdgeInsets.only(top:20.0),
            color: Colors.transparent,
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [Colors.purple, Colors.orange],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //   )
            // ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () => getImagegallery(),
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
                    ),
                    // Column(
                    //   children: [
                    //     Padding(
                    //       padding: EdgeInsets.only(top: 60.0),
                    //       child: IconButton(
                    //         onPressed: (){
                    //           getImage();
                    //         }, 
                    //         icon: Icon(
                    //           FontAwesomeIcons.camera,
                    //           size:30.0,
                    //         )
                    //       ),
                    //     ),
                    //     IconButton(
                    //     onPressed: (){
                    //       getImagegallery();
                    //     }, 
                    //     icon: Icon(
                    //       FontAwesomeIcons.image,
                    //       size:30.0,
                    //     )
                    //   ),
                    //   ],
                    // ),
                    
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                 Padding(
                  padding: EdgeInsets.all(25.0),
                  child: TextFormField(
                controller: _description,
                decoration: InputDecoration(
                  hintText: 'Your Good Name!',
                  // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
                ),
              //     SizedBox(
              //     height: 10.0,
              //   ),
              //    Padding(
              //     padding: EdgeInsets.all(25.0),
              //     child: TextFormField(
              //   controller: _img,
              //   decoration: InputDecoration(
              //     hintText: 'Image_url',
              //     // errorText: _validate ? 'Value Can\'t Be Empty' : null,
              //   ),
              // ),
              //   ),
                SizedBox(
                  height: 20.0,
                ),
                 RaisedButton(
                      onPressed: (){
                        uploadPic(context);
                  //         Map <String,dynamic> data={"description":_description.text,"image":url};
                  // FirebaseFirestore.instance.collection("test").add(data).then((data) {
                  //   print(data);
                  //   print("Success!!");
                  //   print(data);
                  // }).catchError((onError)
                  // {
                  //   print('error');
                  // }
                  // );
                      },
                      elevation: 4.0,
                      splashColor: Colors.red,
                      child: Text('Save',
                        style: TextStyle(color: Colors.white,fontSize: 16.0),
                      ),
                ),
                 Padding(
                  padding: EdgeInsets.all(25.0),
                  // child: Text('Url: $url'),
              //     child: TextFormField(
              //   controller: _img,
              //   decoration: InputDecoration(
              //     hintText: 'Image_url',
              //     // errorText: _validate ? 'Value Can\'t Be Empty' : null,
              //   ),
              // ),
                ),
              ],
            ),
          ),
        ),
      ),

      // body: Center(
      //   child: _image == null ? Text('No image Selected') : Image.file(_image!),
      // ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(top:700.0),
      //   child: Column(
      //     children: [
      //       FloatingActionButton(
      //         onPressed: getImage,
      //         backgroundColor: Colors.amber,
      //         child: Icon(FontAwesomeIcons.camera),
      //       ),
      //       SizedBox(height: 20.0,),
      //       FloatingActionButton(
      //         onPressed: (){
      //           uploadPic(context);
      //         },
      //         backgroundColor: Colors.amber,
      //         child: Icon(FontAwesomeIcons.save),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
