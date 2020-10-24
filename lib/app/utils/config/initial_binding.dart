import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthRepository());
  }
}
