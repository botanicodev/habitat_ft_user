import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/profile_user_model.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/services/profile_user_service.dart';

class AuthService extends GetxService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  ProfileUserService _userService = Get.find<ProfileUserService>();

  Rx<User> _user = Rx<User>();
  Rx<ProfileUser> _profile = Rx<ProfileUser>();

  User get user => _user.value;
  ProfileUser get profile => _profile.value;

  StreamSubscription _userSubscription;

  @override
  void onInit() {
    _user.bindStream(_auth.authStateChanges());
    
    _userSubscription = _user.listen((user) async {
      _profile.value = await _userService.find(user.uid);
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    _userSubscription?.cancel();
  }

  signInWithEmailAndPassword(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  signOut() {
    _auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
