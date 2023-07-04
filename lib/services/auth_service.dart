import 'package:firebase_auth/firebase_auth.dart';

class auth_service {
  late FirebaseAuth _auth;
  auth_service(){
    _auth =FirebaseAuth.instance;
  }
  Future registerWithEmailAndPassword(String displayName, String email, String password,String phnNumber) async {

    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      user!.updateDisplayName(displayName);
      return {
        "error":false,
        "message":"Success"
      };
    }catch(e){
      print(e.toString());
      return {
        "error":true,
        "message":e.toString()
      };
    }
  }

  Future<UserCredential> signInWithEmailAndPassword(String email,String password)async{
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }
  User? getUserInstance(){
    return _auth.currentUser;
  }
  Future<void> sendPasswordResetEmail(String email)async{
    return await _auth.sendPasswordResetEmail(email: email);
  }
  Future signOut() async{
    _auth.signOut();
  }
}