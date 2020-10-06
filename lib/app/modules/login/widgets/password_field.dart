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
        onChanged: (text) => controller.error = '',
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          errorMaxLines: 4,
          errorText: controller.error == '' ? null : controller.error,
          labelText: 'Contraseña',
        ),
      ),
    );
  }
}
