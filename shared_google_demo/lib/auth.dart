import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AuthService
{
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;


  Stream<FirebaseUser> user;
  Stream<Map<String, dynamic>> profile;

  String _uuid;


  AuthService(){
    user  = Stream(_auth.onAuthStateChanged);

    profile = user.switchMap((FirebaseUser u){
      if(u != null)
      {
        return _db.collection('users').document(u.uid).snapshots().map((snap) => snap.data);
      } else {
        return Stream.just({ });
      }
    });
  }

  Future<FirebaseUser> googleSignIn() async
  {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
    FirebaseUser user = (await _auth.signInWithCredential(credential)).user;

    _uuid = user.uid;
    
    return user;
      }

  @override
  Future<void> signOut() {
    _auth.signOut();
  }

  logIn() async
  {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString('uid',_uuid);
  }

  autoLogin() async
  {
    var prefs = await SharedPreferences.getInstance();

    String _uid = prefs.getString('uid');
    //print("Autologin: "+_uid);
    return _uid.toString();
  }

  logOut() async
  {
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove('uid');
  }
}
