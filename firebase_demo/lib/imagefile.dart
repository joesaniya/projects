import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';


class ImageFile extends StatefulWidget {
  @override
  _ImageFileState createState() => _ImageFileState();
}

class _ImageFileState extends State<ImageFile> {

  File? _image;
  final imagePicker = ImagePicker();

  Future getImage() async
  {
    print('get image');
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path); 
    });
  }

  Future uploadPic(BuildContext context) async
    {
      print('pic upload call');
      String fileName = basename(_image!.path);
      Reference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
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
    return Scaffold(
      body: Center(
        child: _image == null ? Text('No image Selected') : Image.file(_image!),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top:700.0),
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: getImage,
              backgroundColor: Colors.amber,
              child: Icon(FontAwesomeIcons.camera),
            ),
            SizedBox(height: 20.0,),
            FloatingActionButton(
              onPressed: (){
                uploadPic(context);
              },
              backgroundColor: Colors.amber,
              child: Icon(FontAwesomeIcons.save),
            )
          ],
        ),
      ),
    );
  }
}