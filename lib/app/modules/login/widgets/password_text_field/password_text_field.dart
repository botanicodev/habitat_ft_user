import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_text_field/customer_text_field.dart';

import 'password_text_field_controller.dart';

class PasswordTextField extends GetView<PasswordTextFieldController> {
  const PasswordTextField();

  @override
  Widget build(BuildContext context) => Obx(() => textField);

  Widget get textField => CustomerTextField(
        labelText: labelText,
        obscureText: true,
        controller: controller.textFieldController,
        errorText: controller.errorTextAndClean(),
        onChanged: controller.onChange,
      );

  String get labelText => 'Contraseña';
}
