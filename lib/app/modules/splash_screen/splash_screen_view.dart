import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';
import 'package:habitat_ft_user/app/modules/splash_screen/splash_screen_controller.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    Get.find<AuthService>();
    return Stack(
      children: [
        Container(
          child: Image.asset(
            HAssets.SPLASH_SCREEN,
            fit: BoxFit.cover,
            height: Get.height,
            width: Get.width,
          ),
        )
      ],
    );
  }
}
