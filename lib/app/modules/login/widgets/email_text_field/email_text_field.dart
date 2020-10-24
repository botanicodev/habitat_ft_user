import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/email_text_field/email_text_field_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_text_field/customer_text_field.dart';

class EmailTextField extends GetView<EmailTextFieldController> {
  @override
  Widget build(BuildContext context) => Obx(() => textField);

  get textField => CustomerTextField(
        labelText: labelText,
        controller: controller.textFieldController,
        errorText: controller.errorText(),
        onChanged: controller.onChange,
      );

  get labelText => 'Email';
}
