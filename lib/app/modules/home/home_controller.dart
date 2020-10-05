import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/services/workshop_service.dart';

class HomeController extends GetxController {
  WorkshopService _workshopService = Get.find<WorkshopService>();

  RxList<Workshop> pendingWorkshops = <Workshop>[].obs;
  RxBool isLoadingPending = false.obs;

  @override
  void onInit() async {
    pendingWorkshops.value = await _findAllPending();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<List<Workshop>> _findAllPending() async {
    isLoadingPending.value = true;
    List<Workshop> list;
    try {
      list = await _workshopService.allPending();
    } catch (e) {
      Get.snackbar('Error', e);
    } finally {
      isLoadingPending.value = false;
    }
    return list;
  }
}
