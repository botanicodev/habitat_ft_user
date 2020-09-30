import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

import 'widgets/background.dart';
import 'widgets/email_text_field.dart';
import 'widgets/logo.dart';
import 'widgets/login_button.dart';
import 'widgets/password_text_field.dart';
import 'widgets/subtitle.dart';
import 'widgets/htitle.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        children: [
          Logo(),
          HTitle('¡Bienvenido!'),
          SubTitle('Inicio de sesion'),
          EmailTextField(),
          PasswordTextField(),
          LoginButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
          ),
        ],
      ),
    );
  }
}
