import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_text_field.dart';

class PasswordField extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) => Obx(() => textField);

  get textField => CustomerTextField(
        labelText: labelText,
        controller: controller.passwordController,
        onChanged: controller.onChange,
        obscureText: true,
        errorText: controller.emailErrorText(),
      );

  get labelText => 'Contraseña';
}
