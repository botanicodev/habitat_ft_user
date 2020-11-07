import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_confirm_alert_button.dart';

class SignOutConfirmAlertDialogButton extends GetView<AuthRepository> {
  const SignOutConfirmAlertDialogButton();

  @override
  Widget build(_) => CustomerConfirmAlertButton(
        onCancelPressed: Get.back,
        onConfirmPressed: controller.signOut,
      );
}
