import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_button.dart';

import '../login_controller.dart';

class LoginButton extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) =>
      Obx(() => controller.isLoading ? loading : button);

  get loading => CircularProgressIndicator();
  get button => CustomerButton(text: text, onPressed: onPressed);

  get text => 'Ingresar';
  get onPressed => controller.login;
}
