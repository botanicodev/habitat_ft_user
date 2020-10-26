import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class AuthRepository extends GetxService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  StreamSubscription _subscription;

  Rx<User> _user = Rx<User>();
  User get user => _user.value;

  @override
  void onClose() => _subscription.cancel();

  @override
  void onInit() => fetch();

  Future<void> signOut() => _auth.signOut();

  void fetch() =>
      _subscription = _auth.authStateChanges().listen(onStateChange);

  void onStateChange(User usr) {
    _user = usr.obs;
    switch (Get.currentRoute) {
      case Routes.SPLASH_SCREEN:
        if (user == null) Get.offAllNamed(Routes.LOGIN);
        break;
      case Routes.LOGIN:
        if (user != null) Get.offAllNamed(Routes.HOME);
        break;
      case Routes.HOME:
        if (user == null) Get.offAllNamed(Routes.LOGIN);
        break;
    }
  }

  Future<UserCredential> signInWithEmailAndPassword(
          String email, String password) =>
      _auth.signInWithEmailAndPassword(email: email, password: password);
}
