import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/controllers/auth_controller.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class LoginController extends GetxController {
  AuthController _authController = Get.find();

  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    //Borrar
    emailController.value = TextEditingValue(text:'hola@hola.com');
    passwordController.value = TextEditingValue(text:'123456789');
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
      await _authController.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      Get.snackbar('Error login', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    try {
      await _authController.signOut();
    } catch (e) {
      Get.snackbar('Error sign out', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
