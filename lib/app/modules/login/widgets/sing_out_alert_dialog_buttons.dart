import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';

class SingOutAlertDialogButtons extends GetView<AuthService> {
  const SingOutAlertDialogButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          iconSize: 60,
          icon: Icon(
            Icons.highlight_remove_rounded,
            color: HColors.CANCELAR,
          ),
          onPressed: () => Get.back(),
        ),
        IconButton(
          iconSize: 60,
          icon: Icon(
            Icons.check_circle_outline_rounded,
            color: HColors.CONFIRMAR,
          ),
          onPressed: controller.signOut,
        ),
      ],
    );
  }
}
