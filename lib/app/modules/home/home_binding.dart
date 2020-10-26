import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/profile_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';

import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'widgets/customer_drawer/widgets/profile_tile/profile_tile_controller.dart';
import 'controllers/subscription_list_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SubscriptionRepository());
    Get.put(HomeController());
    Get.create(() => SubscriptionListController());
    Get.lazyPut(() => ProfileRepository());
    Get.lazyPut(() => ProfileTileController());
  }
}
