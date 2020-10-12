import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/workshop_display/workshop_display_controller.dart';

class WorkshopDisplayBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WorkshopDisplayController>(
      WorkshopDisplayController(),
    );
  }
}
