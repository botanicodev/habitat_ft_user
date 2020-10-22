import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class LoginController extends GetxService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController _emailController;
  TextEditingController _passwordController;

  RxString _error = ''.obs;
  RxBool _loading = false.obs;
  Rx<User> _user = Rx<User>();

  StreamSubscription _subscription;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  String get email => _emailController.text;
  String get password => _passwordController.text;

  String get error => _error.value;
  bool get loading => _loading.value;
  User get user => _user.value;

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
    _subscription?.cancel();
  }

  void fetch() {
    _subscription = _auth.authStateChanges().listen((user) {
      _user.value = user;
      if (user.isNull) {
        Get.offAllNamed(Routes.LOGIN);
      } else {
        Get.offAllNamed(Routes.HOME);
      }
    });
  }

  void login() async {
    try {
      startLoading();
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      catchLoginError(e);
    } finally {
      endLoading();
    }
  }

  void signOut() {
    _auth.signOut();
  }

  void startLoading() => _loading.value = true;
  void endLoading() => _loading.value = false;

  void onChange(String text) {
    if (error != '') _error.value = '';
  }

  String emailErrorText() => error == '' ? null : '';

  String passwordErrorText() => error == '' ? null : error;

  void catchLoginError(dynamic e) {
    if (e == null) {
      _error.value = 'Se rompio algo, trata de entrar en un rato';
    } else {
      _error.value = e.message;
    }
    _passwordController.value = TextEditingValue(text: '');
  }
}
