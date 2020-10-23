import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';

import 'widgets/layout/layout.dart';
import 'widgets/logo.dart';
import 'widgets/welcome_title.dart';
import 'widgets/sub_title.dart';
import 'widgets/email_field.dart';
import 'widgets/password_field.dart';
import 'widgets/enter_button.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: [
        logo,
        title,
        subtitle,
        email,
        password,
        button,
      ],
    );
  }

  get logo => Logo();
  get title => WelcomeTitle();
  get subtitle => SubTitle();
  get email => EmailField();
  get password => PasswordField();
  get button => EnterButton();
}
