import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class SplashScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            CustomerAssets.SPLASH_SCREEN,
            fit: BoxFit.cover,
            height: Get.height,
            width: Get.width,
          ),
        )
      ],
    );
  }
}
