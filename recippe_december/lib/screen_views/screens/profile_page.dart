import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hungry/views/screens/home_page.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/user_info_tile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  // var _image;
  File _image;
  final imagePicker = ImagePicker();


  // get _image async {
  //    if(_auth.currentUser.photoURL!= null)
  //   {
  //     return Image.network(_auth.currentUser.photoURL,height: 80,width: 50,);
  //   }
  //   else{
  //     return Icon(Icons.account_circle,size:70);
  //   }
  // }

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        // Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }
  getProfileImage()
  {
    if(_auth.currentUser.photoURL!= null)
    {
      return Image.network(_auth.currentUser.photoURL,height: 80,width: 50,);
    }
    else{
      return Icon(Icons.account_circle,size:70);
    }
  }


  Future getImage() async
  {
    print('get image');
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      print("printing path to the camera");
      _image = File(image.path); 
      print(_image);
    });
  }


    Future getImagegallery() async
  {
    print('get image');
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      print("printing path to the gallery");
      _image = File(image.path); 
    });
  }


  Future uploadPic(BuildContext context) async
    {
      print('pic upload call');
      String fileName = basename(_image.path);
      Reference firebaseStorageRef = FirebaseStorage.instance.ref("demo").child(fileName); //demo->database name, filename->tablename
      UploadTask uploadTask=firebaseStorageRef.putFile(_image);
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
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: AppColor.primary,
        elevation: 0,
        centerTitle: true,
        title: Text('My Profile', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: (){
                      uploadPic(context);
           },
            // onPressed: () {},
            child: Text(
              'save',
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            style: TextButton.styleFrom(primary: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Profile Picture Wrapper
          Container(
            color: AppColor.primary,
            padding: EdgeInsets.symmetric(vertical: 24),
            child: GestureDetector(
              onTap: () => _showModalBottomSheet(context),
              // onTap: () {
              //   print('Code to open file manager');
              // },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   width: 100,
                  //   height: 70,
                  //   getProfileImage();
                  // ),
                  Container(
                    width: 130,
                    height: 130,
                    margin: EdgeInsets.only(bottom: 15),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.grey,
                      child: ClipOval(
                        child: SizedBox(
                          width: 180.0,
                          height: 180.0,
                          child: (_image != null) ? Image.file(_image,fit: BoxFit.cover):
                          Image.network("https://wallpaper.dog/large/20469131.jpg",fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    // decoration: BoxDecoration(
                    //   color: Colors.grey,
                    //   borderRadius: BorderRadius.circular(100),
                    //   // Profile Picture
                    //   image: DecorationImage(image: AssetImage('assets/images/profile.jpg'), fit: BoxFit.cover),
                    // ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Change Profile Picture', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w600, color: Colors.white)),
                      SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/camera.svg', color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Section 2 - User Info Wrapper
          Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  Container(
                //   child: Text(
                //     "Hello ${user.email} you are Logged in as ${user.email}",
                //     style:
                //         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                //   ),
                // ),
                // UserInfoTile(
                //   margin: EdgeInsets.only(bottom: 16),
                //   label: 'Email',
                //   value: 'estherjenslin@gmail.com',
                // ),
                UserInfoTile(
                  margin: EdgeInsets.only(bottom: 16),
                  label: 'Full Name',
                  value: '${user.displayName}',
                ),
                UserInfoTile(
                  margin: EdgeInsets.only(bottom: 16),
                  label: 'Email id',
                  value: '${user.email}',
                ),
                // UserInfoTile(
                //   margin: EdgeInsets.only(bottom: 16),
                //   label: 'Subscription Type',
                //   value: 'Premium Subscription',
                //   valueBackground: AppColor.secondary,
                // ),
                // UserInfoTile(
                //   margin: EdgeInsets.only(bottom: 16),
                //   label: 'Subscription Time',
                //   value: 'Until 22 Oct 2025',
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _showModalBottomSheet(context) 
  {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            width: double.infinity,
            color: Colors.grey.shade200,
            alignment: Alignment.center,
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:18.0),
                  child: Text('Choose Image As:', style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w600, color: Colors.black)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                          onPressed: (){
                            getImage();
                          }, 
                          icon: Icon(
                            Icons.camera_enhance,
                            size:50.0,
                          )
                        ),
 
                    SizedBox(
                      width: 20.0,
                    ),
                     IconButton(
                          onPressed: (){
                            getImagegallery();
                          }, 
                          icon: Icon(
                            Icons.image,
                            size:50.0,
                          )
                        ), 
                  ],
                )
              ],
            ),
            // child: ElevatedButton(
            //   child: Text("Close Bottom Sheet"),
            //   style: ElevatedButton.styleFrom(
            //     onPrimary: Colors.white,
            //     primary: Colors.green,

            //   ),
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
          );
        },
    );
  }
}
