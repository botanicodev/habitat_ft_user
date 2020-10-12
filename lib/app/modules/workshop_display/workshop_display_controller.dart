import 'package:get/get.dart';

class WorkshopDisplayController extends GetxController {
  @override
  void onInit() {
    String workshopId = Get.arguments['workshopId'];
    print(workshopId);
  }
}
