import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/profile_repository.dart';
import 'package:habitat_ft_user/app/modules/splash_screen/splash_screen_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenControler());
    Get.put(AuthRepository());
    Get.lazyPut(() => ProfileRepository());
  }
}
