import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_button.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_loading.dart';

import '../login_controller.dart';

class LoginButton extends GetView<LoginController> {
  final String text;

  const LoginButton({this.text = 'Ingresar'});

  @override
  Widget build(_) => Obx(
        () => controller.isLoading
            ? CustomerLoading()
            : CustomerButton(text: text, onPressed: controller.login),
      );
}
