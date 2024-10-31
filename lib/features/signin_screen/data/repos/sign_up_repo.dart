import 'package:firebase_auth/firebase_auth.dart';

class SignupRepo {
  final FirebaseAuth _firebaseAuth;

  SignupRepo({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Future<UserCredential> signUp(String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
