import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/services/workshop_service.dart';

class HomeController extends GetxController {
  WorkshopService _workshopService = Get.find<WorkshopService>();

  RxList<Workshop> _pendingWorkshops = <Workshop>[].obs;
  RxBool _isLoadingPending = false.obs;

  List<Workshop> get pendingWorkshops => _pendingWorkshops.value;
  bool get isLoadingPending => _isLoadingPending.value;
  void startLoadingPending() => _isLoadingPending.value = true;
  void endLoadingPending() => _isLoadingPending.value = false;

  @override
  void onInit() async => _pendingWorkshops.value = await _findAllPending();

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<List<Workshop>> _findAllPending() async {
    List<Workshop> list;
    try {
      startLoadingPending();
      list = await _workshopService.allPending();
    } catch (e) {
      catchError(e);
    } finally {
      endLoadingPending();
    }
    return list;
  }

  void catchError(dynamic e) {
    if (e == null)
      print('Habitat Error: HomeController._findAllPending - Message: -');
    else
      print(
          'Habitat Error: HomeController._findAllPending - Message: ${e.message}');
  }
}
