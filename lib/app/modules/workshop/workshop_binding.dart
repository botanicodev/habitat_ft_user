import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';

class WorkshopBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WorkshopController>(
      WorkshopController(),
    );
  }
}
