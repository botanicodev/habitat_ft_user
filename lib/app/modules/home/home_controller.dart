import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/services/workshop_service.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class HomeController extends GetxController {
  WorkshopService _workshopService = Get.find<WorkshopService>();

  RxList<Workshop> _pendingWorkshops = <Workshop>[].obs;
  RxList<Workshop> _completedWorkshops = <Workshop>[].obs;
  RxBool _isLoadingPending = false.obs;
  RxBool _isLoadingCompleted = false.obs;

  List<Workshop> get pendingWorkshops => _pendingWorkshops.value;
  bool get isLoadingPending => _isLoadingPending.value;
  void startLoadingPending() => _isLoadingPending.value = true;
  void endLoadingPending() => _isLoadingPending.value = false;

  List<Workshop> get completedWorkshops => _completedWorkshops.value;
  bool get isLoadingCompleted => _isLoadingCompleted.value;
  void startLoadingCompleted() => _isLoadingCompleted.value = true;
  void endLoadingCompleted() => _isLoadingCompleted.value = false;

  @override
  void onInit() async {
    _pendingWorkshops.value = await _findAllPending();
    _completedWorkshops.value = await _findAllCompleted();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<List<Workshop>> _findAllPending() async {
    List<Workshop> list;
    try {
      startLoadingPending();
      list = await _workshopService.all(Status.pending);
    } catch (e) {
      catchError(e);
    } finally {
      endLoadingPending();
    }
    return list;
  }

  Future<List<Workshop>> _findAllCompleted() async {
    List<Workshop> list;
    try {
      startLoadingCompleted();
      list = await _workshopService.all(Status.completed);
    } catch (e) {
      catchError(e);
    } finally {
      endLoadingCompleted();
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
