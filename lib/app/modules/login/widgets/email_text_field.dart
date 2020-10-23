import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_text_field.dart';

import '../login_controller.dart';

class EmailTextField extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) => Obx(() => textField);

  get textField => CustomerTextField(
        labelText: labelText,
        controller: controller.emailController,
        onChanged: controller.onChange,
        errorText: controller.emailErrorText(),
      );

  get labelText => 'Email';
}
