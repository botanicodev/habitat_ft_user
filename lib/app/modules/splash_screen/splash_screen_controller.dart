import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() => Timer(Duration(seconds: 3), onTimerEnd);

  void onTimerEnd() => Get.find<LoginController>().fetch();
}
