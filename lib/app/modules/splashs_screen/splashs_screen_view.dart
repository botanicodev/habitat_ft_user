import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/splashs_screen/splashs_screen_controller.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashsScreenView extends GetView<SplashsScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashScreen(
            seconds: 3,
            navigateAfterSeconds: Routes.LOGIN,
          ),
          Container(
            child: Image.asset(
              'assets/img/SplashScreen.png',
              fit: BoxFit.cover,
              height: Get.height,
              width: Get.width,
            ),
          )
        ],
      ),
    );
  }
}
