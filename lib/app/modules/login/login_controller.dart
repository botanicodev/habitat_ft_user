import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/services/auth_service.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/services/user_profile_service.dart';
import 'package:habitat_ft_user/app/services/workshop_service.dart';

class LoginController extends GetxController {
  AuthService _authService = Get.find<AuthService>();
  UserProfileService _profileUserService = Get.find<UserProfileService>();
  WorkshopService _workshopService = Get.find<WorkshopService>();

  TextEditingController _emailController;
  TextEditingController _passwordController;

  RxString _error = ''.obs;
  RxBool _loading = false.obs;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  String get email => _emailController.text;
  String get password => _passwordController.text;

  String get error => _error.value;
  bool get loading => _loading.value;

  @override
  void onInit() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    //Borrar
    _emailController.value = TextEditingValue(text: 'hola@hola.com');
    _passwordController.value = TextEditingValue(text: '123456789');
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    _emailController?.dispose();
    _passwordController?.dispose();
  }

  void login() async {
    try {
      _loading.value = true;
      await _authService.signInWithEmailAndPassword(email, password);
      _profileUserService.initRef(_authService.user.uid);
      _workshopService.initRef(_authService.user.uid);
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      if (e.isNull) {
        _error.value = 'Se rompio algo, trata de entrar en un rato';
      } else {
        _error.value = e.message;
      }
      _passwordController.value = TextEditingValue(text: '');
    } finally {
      _loading.value = false;
    }
  }

  void signOut() {
    try {
      _authService.signOut();
    } catch (e) {
      print('Habitat error: LoginController.signOut - ${e.message}');
      Get.snackbar('Error sign out', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void onChange(String text) {
    if (error != '') _error.value = '';
  }

  String emailErrorText() {
    return error == '' ? null : '';
  }

  String passwordErrorText() {
    return error == '' ? null : error;
  }
}
