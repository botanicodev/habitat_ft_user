import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_controller.dart';

class EmailField extends GetView<LoginController> {
  const EmailField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: controller.emailController,
        onChanged: (text) => controller.error.value = '',
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
          errorMaxLines: 4,
          errorText: controller.error.value == '' ? null : '',
        ),
      ),
    );
  }
}
