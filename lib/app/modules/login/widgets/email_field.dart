import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_controller.dart';

class EmailField extends GetView<LoginController> {
  const EmailField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
      ),
    );
  }
}
