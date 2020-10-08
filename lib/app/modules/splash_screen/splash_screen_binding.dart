import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';

import 'package:habitat_ft_user/app/modules/splash_screen/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashScreenController>(SplashScreenController());
    Get.put<AuthService>(AuthService());
  }
}
