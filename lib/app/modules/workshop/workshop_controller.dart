import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';
import 'package:habitat_ft_user/app/utils/snackbar.dart';

import 'widgets/finished_view/finished_view.dart';

class WorkshopController extends GetxController {
  final _workshopRepo = Get.find<WorkshopRepository>();
  final _subscriptionRepo = Get.find<SubscriptionRepository>();
  final Subscription _subscription = Get.arguments['subscription'];

  RxList<Component> _componentList = <Component>[].obs;

  List<Component> get componentList => _componentList;

  @override
  void onInit() => fetchComponentList();

  void fetchComponentList() =>
      _workshopRepo.getAllComponents(_subscription.id).then(_setComponentList);

  void _setComponentList(List<Component> value) => _componentList.value = value;

  Future<void> finish() async {
    try {
      _subscription.setComplete();
      await _subscriptionRepo.update(_subscription);
      Get.off(FinishedView());
    } catch (e) {
      CustomerSnackbar.error(
        message: 'Ocurrio un error al finalizar el taller, intente mas tarde',
      );
    }
  }
}
