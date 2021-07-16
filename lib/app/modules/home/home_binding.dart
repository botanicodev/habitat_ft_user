import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'widgets/customer_drawer/widgets/customer_drawer.dart/profile_tile/profile_tile_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionRepository());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProfileTileController());
  }
}
