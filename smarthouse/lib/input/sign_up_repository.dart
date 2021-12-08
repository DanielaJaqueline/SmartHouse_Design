import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:smarthouse/input/sign_up.dart';
import 'package:smarthouse/screens/loginScreen.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final FirebaseAuth _auth;

  SignUpRepositoryImpl(this._auth);
  @override
  Future<SignUpResponse> register(SignUpData data) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      userCredential
        ..user!.updateDisplayName(
          "${data.name} ${data.lastname}",
        );
      return SignUpResponse(null, userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return SignUpResponse(e.code, null);
    }
  }
}
