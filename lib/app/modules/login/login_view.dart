import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';

import 'widgets/background.dart';
import 'widgets/logo.dart';
import 'widgets/welcome_title.dart';
import 'widgets/sub_title.dart';
import 'widgets/email_field.dart';
import 'widgets/password_field.dart';
import 'widgets/login_button.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        children: [
          Logo(),
          WelcomeTitle(),
          SubTitle(),
          EmailField(),
          PasswordField(),
          LoginButton(),
        ],
      ),
    );
  }
}
