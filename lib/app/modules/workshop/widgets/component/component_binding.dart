import 'package:get/get.dart';

import 'component_controller.dart';

class ComponentBinding implements Bindings {
  @override
  void dependencies() {
    Get.create(() => ComponentController());
  }
}
