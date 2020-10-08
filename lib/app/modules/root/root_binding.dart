import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/services/profile_service.dart';
import 'package:habitat_ft_user/app/modules/home/services/subscription_service.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';

import 'package:habitat_ft_user/app/modules/root/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RootController>(RootController());
    Get.put<AuthService>(AuthService());
    Get.put<ProfileService>(ProfileService());
    Get.put<SubscriptionService>(SubscriptionService());
  }
}
