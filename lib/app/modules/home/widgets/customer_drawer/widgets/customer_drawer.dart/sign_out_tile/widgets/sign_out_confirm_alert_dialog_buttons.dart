import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/modules/login/login_view.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_confirm_alert_button.dart';

class SignOutConfirmAlertDialogButton extends StatelessWidget {
  const SignOutConfirmAlertDialogButton();

  @override
  Widget build(BuildContext context) {
    return CustomerConfirmAlertButton(
      onCancelPressed: Get.back,
      onConfirmPressed: () => Get.offNamed(Routes.LOGIN),
    );
  }
}
