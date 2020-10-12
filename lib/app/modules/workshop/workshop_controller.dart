import 'package:get/get.dart';

class WorkshopController extends GetxController {
  @override
  void onInit() {
    String workshopId = Get.arguments['workshopId'];
    print(workshopId);
  }
}
