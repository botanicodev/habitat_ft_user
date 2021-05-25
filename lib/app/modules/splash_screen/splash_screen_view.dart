import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class SplashScreenView extends StatelessWidget {
  SplashScreenView() {
    Timer(Duration(seconds: 3), () => Get.offAllNamed(Routes.LOGIN));
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
