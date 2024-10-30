import 'package:firebase_auth/firebase_auth.dart';

class LoginRepo {
  final FirebaseAuth _firebaseAuth;

  LoginRepo({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Future<UserCredential> login(String email, String password) async {
    return await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
