
import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart'as path; 

class ImagePicker extends StatefulWidget {

  @override
  State<ImagePicker> createState() => _ImagePickerState();

  

  // static pickImage({source : ImageSource.gallery}) {}
}

class _ImagePickerState extends State<ImagePicker> {
  // Future<File>? _image;
   File? _image;
  final ImagePicker _picker = ImagePicker();
  Future getImage() async
    {
      
      var image =  await _picker.pickImage(source: ImageSource.gallery);
      
      
      setState(() {
        _image=image;
        print('Image Path : $_image');
      });
    }
  @override
  Widget build(BuildContext context) {

    Future getImage() async
    {
      final ImagePicker _picker = ImagePicker();
      var image =  await _picker.pickImage(source: ImageSource.gallery);
      
      
      setState(() {
        _image=image;
        print('Image Path : $_image');
      });
    }

    Future uploadPic(BuildContext context) async
    {
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

    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
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
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: IconButton(
                      onPressed: (){
                        getImage();
                      }, 
                      icon: Icon(
                        FontAwesomeIcons.camera,
                        size:30.0,
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: [
                          Text('Username',
                            style: TextStyle(
                              color: Colors.blueGrey,fontSize: 18.0,fontWeight: FontWeight.bold
                            ),
                          ),
                          Text('Esther Jenslin',
                      style: TextStyle(
                        color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
                      ),
                    ),
                        ],
                      ),
                    ),
                  ),
              
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: Colors.blue,
                      ),)
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: [
                          Text('Birthday',
                            style: TextStyle(
                              color: Colors.blueGrey,fontSize: 18.0,fontWeight: FontWeight.bold
                            ),
                          ),
                          Text('16th Feb,1999',
                      style: TextStyle(
                        color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
                      ),
                    ),
                        ],
                      ),
                    ),
                  ),
              
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: Colors.blue,
                      ),)
                  )
                ],
              ),

              SizedBox(
                height: 20.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: [
                          Text('Location',
                            style: TextStyle(
                              color: Colors.blueGrey,fontSize: 18.0,fontWeight: FontWeight.bold
                            ),
                          ),
                          Text('Tuticorin',
                      style: TextStyle(
                        color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
                      ),
                    ),
                        ],
                      ),
                    ),
                  ),
              
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: Colors.blue,
                      ),)
                  )
                ],
              ),

              SizedBox(
                height: 20.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: [
                          Text('Email Id',
                            style: TextStyle(
                              color: Colors.blueGrey,fontSize: 18.0,fontWeight: FontWeight.bold
                            ),
                          ),
                          Text('esther@Entrans.io',
                      style: TextStyle(
                        color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
                      ),
                    ),
                        ],
                      ),
                    ),
                  ),
              
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: Colors.blue,
                      ),)
                  )
                ],
              ),

              SizedBox(
                height: 20.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    elevation: 4.0,
                    splashColor: Colors.red,
                    child: Text('Cancel',
                      style: TextStyle(color: Colors.white,fontSize: 16.0),
                    ),
                  ),
                  RaisedButton(
                    onPressed: (){
                      uploadPic(context);
                    },
                    elevation: 4.0,
                    splashColor: Colors.red,
                    child: Text('Save',
                      style: TextStyle(color: Colors.white,fontSize: 16.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      
    );
  }
}