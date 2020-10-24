import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_button.dart';

import '../login_controller.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton();

  @override
  Widget build(BuildContext context) =>
      Obx(() => controller.isLoading ? loading : button);

  Widget get loading => CircularProgressIndicator();
  Widget get button => CustomerButton(text: text, onPressed: controller.login);

  String get text => 'Ingresar';
}
