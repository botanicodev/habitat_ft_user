import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/splash_screen/splash_screen_controller.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class SplashScreenView extends GetView<SplashScreenControler> {
  SplashScreenView() {
    Timer(Duration(seconds: 3), () {
      controller.isLogin().then((value) {
        if (value) {
          Get.offAllNamed(Routes.HOME);
        } else {
          Get.offAllNamed(Routes.LOGIN);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.CELESTE_HABITAT,
      child: Image.asset(
        CustomerAssets.SPLASH_SCREEN,
      ),
    );
  }
}
