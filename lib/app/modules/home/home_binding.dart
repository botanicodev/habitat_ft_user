import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/modules/home/controllers/workshops_pending_controller.dart';

import 'controllers/user_tile_controller.dart';
import 'controllers/workshops_completed_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<WorkshopsPendingController>(
      () => WorkshopsPendingController(),
    );
    Get.lazyPut<WorkshopsCompletedController>(
      () => WorkshopsCompletedController(),
    );
    Get.lazyPut<UserTileController>(
      () => UserTileController(),
    );
  }
}
