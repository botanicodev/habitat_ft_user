import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';

class RootController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 3), () {
      Get.find<AuthService>().fetch();
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
