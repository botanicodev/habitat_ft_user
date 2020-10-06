import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class AuthService extends GetxService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User> _user = Rx<User>();

  User get user => _user.value;

  @override
  void onInit() {
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) {
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  void signOut() {
    _auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
