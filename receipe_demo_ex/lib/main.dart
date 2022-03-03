import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:io';

  TextEditingController _name = new TextEditingController();
  TextEditingController _ingredients = new TextEditingController();
  TextEditingController _steps = new TextEditingController();

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
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

    _bottomSheet(context)
{
  showModalBottomSheet(
    context: context, 
    builder: (BuildContext ctx)
    {
      return Container(
        width: double.infinity,
        height: 200.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Select image as',style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
              height: 2.0,
            ),
            TextButton.icon(
            icon: Icon(Icons.camera,
                        size: 50.0,
                        color: Colors.purple),
            label: Text('Take A Photo',style: TextStyle(color: Colors.purple),),
            onPressed: () {
              getImage();
            },
          ),
              SizedBox(
                height: 10.0,
              ),
              TextButton.icon(
            icon: Icon(Icons.image,
                        size: 50.0,
                        color: Colors.purple
                        ),
            label: Text('Pick image from Gallery',style: TextStyle(color: Colors.purple),),
            onPressed: () {
              getImagegallery();
            },
          ),
              //  IconButton(
              //     onPressed: (){
              //        // getImage();
              //     }, 
              //     icon: Icon(
              //       FontAwesomeIcons.image,
              //       size:50.0,
              //     )
              // )
          ],
        ),
      );
    }
  );
}

 Future uploadPic(BuildContext context) async
    {
      print('pic upload call');
      String fileName = basename(_image!.path);
      Reference firebaseStorageRef = FirebaseStorage.instance.ref("receipepic").child(fileName);
      UploadTask uploadTask=firebaseStorageRef.putFile(_image!);

      var downurl =await(await uploadTask).ref.getDownloadURL();
      var url=downurl.toString();
      print("Download Url: $url");
      Text('Download Url: $url');

      TaskSnapshot taskSnapshot = await uploadTask;
      setState(() {
         url = downurl.toString();
         print("setstate url: $url");
        //  print('TextField: $_img');
                       Map <String,dynamic> data={
                         "name": _name.text,
                         "Ingredients":_ingredients.text,
                         "steps":_steps.text,
                         "image":url
                        //  "description":_description.text,
                        //  "image":url
                        };
                  FirebaseFirestore.instance.collection("receipe").add(data).then((data) {
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


   final _formKey = GlobalKey<FormState>();  
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipe Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          //  margin: const EdgeInsets.all(15.0),
          //   padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: NetworkImage('https://i.pinimg.com/736x/ae/76/d2/ae76d230c581ba0fd2213b65c94c07b7.jpg'),fit: BoxFit.fill
              // ),
              border: Border.all(
                color: Colors.blueAccent
              )
            ),
          height: double.infinity,
          width: double.infinity,

          child: SingleChildScrollView(
            child: Form(  
            key: _formKey,  
            child: Padding(
              padding: const EdgeInsets.only(left:30.0,right: 30.0,top: 20.0,bottom: 20.0),
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: <Widget>[  
                  Row
                  (
                    children: [
                      Text('Receipe Name : ',style: TextStyle(color: Colors.red),),
                        Expanded(
                          child: TextFormField(  
                            controller: _name,
                            decoration: const InputDecoration(  
                               enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 1.0),
                            ),
                              // icon: const Icon(Icons.person),  
                              hintText: 'Enter Your Recipe Name',  
                                          // labelText: 'Name',  
                            ),  
                                        validator: (value) {  
                                          if (value!.isEmpty) {  
                          return 'Please enter some text';  
                                          }  
                                          return null;  
                                        },  
                                      ),
                        ), 
                    ],
                  ),
                  // TextFormField(  
                  //   decoration: const InputDecoration(  
                  //     icon: const Icon(Icons.person),  
                  //     hintText: 'Enter Your Recipe Name',  
                  //     // labelText: 'Name',  
                  //   ),  
                  //   validator: (value) {  
                  //     if (value!.isEmpty) {  
                  //       return 'Please enter some text';  
                  //     }  
                  //     return null;  
                  //   },  
                  // ),  
                  SizedBox(
                    height: 20.0,
                  ),
               Row
                  (
                    children: [
                      Text('Ingredients : ',style: TextStyle(color: Colors.red),),
                        Expanded(
                          child: TextFormField(  
                            controller: _ingredients,
                            keyboardType: TextInputType.multiline,
                            minLines: 1,//Normal textInputField will be displayed
                            maxLines: 5,
                            decoration: const InputDecoration(  
                               enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 1.0),
                            ),
                              // icon: const Icon(Icons.person),  
                              hintText: 'Write the ingredients Name',  
                                          // labelText: 'Name',  
                            ),  
                                        validator: (value) {  
                                          if (value!.isEmpty) {  
                          return 'Please enter some text';  
                                          }  
                                          return null;  
                                        },  
                                      ),
                        ), 
                    ],
                  ),  
                   SizedBox(
                    height: 20.0,
                  ),
                 Row
                  (
                    children: [
                      Text('Steps : ',style: TextStyle(color: Colors.red),),
                        Expanded(
                          child: TextFormField(  
                            controller: _steps,
                            decoration: const InputDecoration(  
                               enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 1.0),
                            ),
                              // icon: const Icon(Icons.person),  
                              hintText: 'Write your Steps',  
                                          // labelText: 'Name',  
                            ),  
                                        validator: (value) {  
                                          if (value!.isEmpty) {  
                          return 'Please enter some text';  
                                          }  
                                          return null;  
                                        },  
                                      ),
                        ), 
                    ],
                  ),
                   SizedBox(
                    height: 20.0,
                  ),
               Row
                  (
                    children: [
                      Text('Image : ',style: TextStyle(color: Colors.red),),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                               _bottomSheet(context);
                            },
                            child: Container(
                              child: SizedBox(
                                    width: 180.0,
                                    height: 180.0,
                                    // child: Image.network("https://wallpaper.dog/large/20469131.jpg",fit: BoxFit.cover,),
                                    child: (_image != null) ? Image.file(_image!,fit: BoxFit.cover):
                                    Image.network("https://wallpaper.dog/large/20469131.jpg",fit: BoxFit.cover,),
                                  ),
                            ),
                          ),
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
                    child: Text('Upload Receipe',style: TextStyle(color: Colors.red),),
                  )
                ],  
              ),
            ),  
              ),
          ),
        ),
      ), 
    );
  }  
}  


// _bottomSheet(context)
// {
//   showModalBottomSheet(
//     context: context, 
//     builder: (BuildContext ctx)
//     {
//       return Container(
//         width: double.infinity,
//         height: 200.0,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Text('Select image as',style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold
//               ),),
//             ),
//             Divider(
//               height: 2.0,
//             ),
//             TextButton.icon(
//             icon: Icon(Icons.camera,
//                         size: 50.0,
//                         color: Colors.purple),
//             label: Text('Take A Photo',style: TextStyle(color: Colors.purple),),
//             onPressed: () {
//               getImage();
//             },
//           ),
//             //  IconButton(
//             //       onPressed: (){
//             //          // getImage();
//             //       }, 
//             //       icon: Icon(
//             //         FontAwesomeIcons.camera,
//             //         size:50.0,
//             //       )
//             //   ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               TextButton.icon(
//             icon: Icon(Icons.image,
//                         size: 50.0,
//                         color: Colors.purple
//                         ),
//             label: Text('Pick image from Gallery',style: TextStyle(color: Colors.purple),),
//             onPressed: () {},
//           ),
//               //  IconButton(
//               //     onPressed: (){
//               //        // getImage();
//               //     }, 
//               //     icon: Icon(
//               //       FontAwesomeIcons.image,
//               //       size:50.0,
//               //     )
//               // )
//           ],
//         ),
//       );
//     }
//   );
// }