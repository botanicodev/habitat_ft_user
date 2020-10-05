import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/services/auth_service.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class LoginController extends GetxController {
  AuthService _authController = Get.find<AuthService>();

  TextEditingController emailController;
  TextEditingController passwordController;

  RxString error = ''.obs;
  RxBool loading = false.obs;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    //Borrar
    // emailController.value = TextEditingValue(text: 'hola@hola.com');
    // passwordController.value = TextEditingValue(text: '123456789');
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    emailController?.dispose();
    passwordController?.dispose();
  }

  void login() async {
    loading.value = true;
    try {
      await _authController.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      error.value = e.message;
      passwordController.value = TextEditingValue(text: '');
    } finally {
      loading.value = false;
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
