import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class SplashScreenView extends StatelessWidget {
  final String asset;

  const SplashScreenView({
    this.asset = CustomerAssets.SPLASH_SCREEN,
  });

  @override
  Widget build(BuildContext context) => Container(child: child);

  Widget get child => Image.asset(
        asset,
        fit: BoxFit.cover,
        height: Get.height,
        width: Get.width,
      );
}
