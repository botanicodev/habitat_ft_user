// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/controllers/customer_text_field_controller.dart';

import '../../login_controller.dart';

class PasswordTextFieldController extends CustomerTextFieldController {
  get loginController => Get.find<LoginController>();

  @override
  String get errorTextValue => Get.find<LoginController>().passwordErrorText();

  @override
  set errorTextValue(String value) => loginController.errorText = value;
}
