import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/modules/home/services/workshop_service.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class WorkshopsCompletedController extends GetxController {
  WorkshopService _workshopService = Get.find<WorkshopService>();

  RxList<Workshop> _workshops = <Workshop>[].obs;

  RxBool _isLoading = true.obs;

  List<Workshop> get workshops => _workshops;

  bool get isLoading => _isLoading.value;

  void startLoading() => _isLoading.value = true;
  void endLoading() => _isLoading.value = false;

  StreamSubscription _subscription;

  @override
  void onInit() {
    _subscription =
        _workshopService.allByStatus(Status.completed).listen((event) {
      _workshops.value =
          event.docs.map((doc) => Workshop.fromJson(doc.data())).toList();
      endLoading();
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }
}
