import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';
import 'package:habitat_ft_user/app/utils/snackbar.dart';

// REFACTOR
class WorkshopController extends GetxController {
  final _workshopRepo = Get.find<WorkshopRepository>();
  final _subscriptionRepo = Get.find<SubscriptionRepository>();

  RxList<Component> _componentList = <Component>[].obs;
  RxBool _isWorkshopFinished = false.obs;

  Subscription get _subscription => Get.arguments['subscription'];
  List<Component> get componentList => _componentList;
  bool get isWorkshopFinished => _isWorkshopFinished.value;

  @override
  void onInit() => fetchComponentList();

  void fetchComponentList() =>
      _workshopRepo.getAllComponents(_subscription.id).then(_setComponentList);

  void _setComponentList(List<Component> value) => _componentList.value = value;

  Future<void> finish() async {
    try {
      _subscription.finish();
      await _subscriptionRepo.update(_subscription);
      _isWorkshopFinished.value = true;
      _activateDestructorTimer();
    } catch (e) {
      CustomerSnackbar.error(
          message:
              'Ocurrio un error al finalizar el taller, intente mas tarde');
    }
  }

  void _activateDestructorTimer() =>
      Timer(Duration(milliseconds: 1000), Get.back);
}
