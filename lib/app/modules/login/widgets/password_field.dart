import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';

class PasswordField extends GetView<LoginController> {
  const PasswordField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: controller.passwordController,
        onChanged: (text) => controller.error.value = '',
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          errorMaxLines: 4,
          errorText:
              controller.error.value == '' ? null : controller.error.value,
          labelText: 'Contraseña',
        ),
      ),
    );
  }
}
