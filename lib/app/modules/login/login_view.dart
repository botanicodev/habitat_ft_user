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
  Widget build(_) => Layout(
        children: [
          const Logo(),
          const WelcomeTitle(),
          const Subtitle(),
          const EmailTextField(),
          const PasswordTextField(),
          const LoginButton(),
        ],
      );
}
