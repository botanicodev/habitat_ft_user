import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/modules/home/services/workshop_service.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class WorkshopListController extends GetxController {
  WorkshopService _workshopService = Get.find<WorkshopService>();

  RxList<Workshop> _workshops = <Workshop>[].obs;
  RxBool _isLoading = true.obs;
  StreamSubscription _subscription;

  List<Workshop> get workshops => _workshops;
  bool get isLoading => _isLoading.value;

  void startLoading() => _isLoading.value = true;
  void endLoading() => _isLoading.value = false;

  void fetchByPendingStatus() => fetch(Status.pending);
  void fetchByCompletedStatus() => fetch(Status.completed);

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }

  void fetch(Status status) {
    _subscription = _workshopService.allByStatus(status).listen((event) {
      _workshops.value =
          event.docs.map((doc) => Workshop.fromJson(doc.data())).toList();
      endLoading();
    });
  }
}
