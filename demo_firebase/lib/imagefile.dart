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


// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageFile extends StatefulWidget {

//   @override
//   State<ImageFile> createState() => _ImageFileState();
// }

// class _ImageFileState extends State<ImageFile> {

//   PickedFile? _imageFile;
//   final ImagePicker _picker = ImagePicker();

//   // void takePhoto(ImageSource source) async
//   // {
//   //   final PickedFile = await _picker.getImage
//   //   (
//   //     source: source
//   //   );
//   //   setState(() {
//   //     _imageFile = PickedFile ;
//   //   });
//   // }

//   Widget imageProfile(BuildContext context)
// {
//   return Center(
//     child: Stack(
//       children: [
//         CircleAvatar(
//           radius: 80.0,
//           child: ClipOval
//           (
//             child: SizedBox(
//             width: 180.0,
//             height: 180.0,
//             child: (_imageFile != null) 
//             ? Image.file(_imageFile,fit: BoxFit.cover)
//             : Image.network("https://wallpaper.dog/large/20469131.jpg",fit: BoxFit.cover,),
          
          
//           //   child: _imageFile ==null ? 
//           //   Image.network("https://wallpaper.dog/large/20469131.jpg",fit: BoxFit.cover,) : 
//           //   FileImage(File(_imageFile.path)
//           // ),
            
//           )
//         ),
//         ),
//         Positioned(
//           bottom: 20.0,
//           right: 20.0,
//           child: InkWell(
//             onTap: (){
//             // bottomSheet();
//               showModalBottomSheet
//               (
//                 context: context, 
//                 builder: ((builder)=> bottomSheet(context)),
//               );
//             },
//             child: Icon(
//               FontAwesomeIcons.camera,
//               color: Colors.teal,
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }

// Widget bottomSheet(BuildContext context)
// {
//   var height = MediaQuery.of(context).size.height;
//   var width = MediaQuery.of(context).size.width;
//   var size = MediaQuery.of(context).size;

//   // PickedFile? _imageFile;
//   // final ImagePicker _picker = ImagePicker();

//   void takePhoto(ImageSource source) async
//   {
//      final PickedFile = await _picker.getImage
//     (
//       source: source
//     );
//     setState(() {
//       _imageFile = PickedFile ;
//     });
//   }

//   return Container(
//     height: 100.0,
//     // width: 500.0,
//     width: MediaQuery.of(context).size.width,
//     margin: EdgeInsets.symmetric(
//       horizontal: 20.0,
//       vertical: 20.0
//     ),
//     child: Column(
//       children: [
//         Text("Choose Profile Photo", style: TextStyle(fontSize: 20.0),),
//         SizedBox(height: 20.0,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             FlatButton.icon
//             (
//               onPressed: (){
//                 takePhoto(ImageSource.camera);
//               }, 
//               icon: Icon(FontAwesomeIcons.camera), 
//               label: Text('Camera')
//             ),
//             FlatButton.icon
//             (
//               onPressed: (){
//                 takePhoto(ImageSource.gallery);
//               }, 
//               icon: Icon(FontAwesomeIcons.image), 
//               label: Text('Gallery')
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
//         child: ListView(
//           children: [
//             imageProfile(context),
//           ],
//         ),
//       ),
      
//     );
//   }
// }





