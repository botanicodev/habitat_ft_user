import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class AuthService extends GetxService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  StreamSubscription _subscription;

  Rx<User> _user = Rx<User>();
  User get user => _user.value;

  @override
  void onInit() {
    _subscription = _auth.authStateChanges().listen((user) {
      _user.value = user;
      if (user == null)
        Get.toNamed(Routes.LOGIN);
      else
        Get.toNamed(Routes.HOME);
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    // await _auth.setPersistence(Persistence.LOCAL);
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  void signOut() {
    _auth.signOut();
  }
}
