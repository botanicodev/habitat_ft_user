import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/splashs_screen/splashs_screen_controller.dart';

class SplashsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashsScreenController>(
      () => SplashsScreenController(),
    );
  }
}
