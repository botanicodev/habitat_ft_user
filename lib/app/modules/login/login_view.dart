import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';

import 'widgets/layout.dart';
import 'widgets/logo.dart';
import 'widgets/welcome_title.dart';
import 'widgets/subtitle.dart';
import 'widgets/email_text_field/email_text_field.dart';
import 'widgets/password_text_field/password_text_field.dart';
import 'widgets/login_button.dart';

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

  Widget get logo => const Logo();
  Widget get title => const WelcomeTitle();
  Widget get subtitle => const Subtitle();
  Widget get email => const EmailTextField();
  Widget get password => const PasswordTextField();
  Widget get button => const LoginButton();
}
