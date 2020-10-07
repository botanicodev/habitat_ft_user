import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'controllers/user_tile_controller.dart';
import 'controllers/workshop_list_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.create<WorkshopListController>(
      () => WorkshopListController(),
    );
    Get.lazyPut<UserTileController>(
      () => UserTileController(),
    );
  }
}
