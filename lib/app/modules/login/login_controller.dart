import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class LoginController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _user = Rx<User>();

  TextEditingController emailController;
  TextEditingController passwordController;

  User get user => _user.value;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    emailController?.dispose();
    passwordController?.dispose();
  }

  void login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      Get.snackbar('Error login', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      Get.snackbar('Error sign out', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
