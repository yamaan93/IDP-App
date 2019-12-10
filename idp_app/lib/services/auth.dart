import 'package:firebase_auth/firebase_auth.dart';
import 'package:idp_app/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        // .map((FirebaseUser user) => _userFromFirebaseUser(user));  //line bellow does same thing
        .map(_userFromFirebaseUser);
  }

  //sign in  anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign iin

  //sign up

  //sign out
  Future signOut() async{
    try{
      _auth.signOut();

    }catch(e){
      print('error signing out');
    }

  }
}
