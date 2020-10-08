import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'controllers/profile_controller.dart';
import 'controllers/subscription_list_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.create<SubscriptionListController>(
      () => SubscriptionListController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
