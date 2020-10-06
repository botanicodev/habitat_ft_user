import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/services/workshop_service.dart';

class HomeController extends GetxController {
  WorkshopService _workshopService = Get.find<WorkshopService>();

  RxList<Workshop> _pendingWorkshops = <Workshop>[].obs;
  RxBool _isLoadingPending = false.obs;

  List<Workshop> get pendingWorkshops => _pendingWorkshops.value;
  bool get isLoadingPending => _isLoadingPending.value;

  @override
  void onInit() async {
    _pendingWorkshops.value = await _findAllPending();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<List<Workshop>> _findAllPending() async {
    _isLoadingPending.value = true;
    List<Workshop> list;
    try {
      list = await _workshopService.allPending();
    } catch (e) {
      if (e == null)
        print('Habitat Error: HomeController._findAllPending - Message: -');
      else
        print(
            'Habitat Error: HomeController._findAllPending - Message: ${e.message}');
    } finally {
      _isLoadingPending.value = false;
    }
    return list;
  }
}
