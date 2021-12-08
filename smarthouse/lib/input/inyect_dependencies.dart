import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:smarthouse/input/sign_up.dart';
import 'package:smarthouse/input/sign_up_repository.dart';
import 'package:smarthouse/screens/loginScreen.dart';

void injectDependencies() {
  var Get;
  Get.i.lazyPut<SignUpRepository>(
    () => SignUpRepositoryImpl(
      FirebaseAuth.instance,
    ),
  );
}
