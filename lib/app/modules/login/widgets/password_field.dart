import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';

class PasswordField extends GetView<LoginController> {
  const PasswordField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Contraseña',
      ),
    );
  }
}
