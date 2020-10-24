import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class AlertButtons extends GetView<AuthRepository> {
  const AlertButtons({
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
            color: CustomerColors.CANCELAR,
          ),
          onPressed: Get.back,
        ),
        IconButton(
          iconSize: 60,
          icon: Icon(
            Icons.check_circle_outline_rounded,
            color: CustomerColors.CONFIRMAR,
          ),
          onPressed: controller.signOut,
        ),
      ],
    );
  }
}
