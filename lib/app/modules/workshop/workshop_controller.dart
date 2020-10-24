import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';

class WorkshopController extends GetxController {
  final WorkshopRepository _workshopRepository = Get.find();
  final SubscriptionRepository _subscriptionRepository = Get.find();

  PageController pageController = PageController(initialPage: 0);
  RxList<Component> _components = <Component>[].obs;
  RxBool _isFinished = false.obs;

  String get uid => Get.find<AuthRepository>().user.uid;
  List<Component> get components => _components;
  String get workshopId => Get.arguments['workshopId'];
  bool get isFinished => _isFinished.value;
  int get currentPage => pageController.page.round();
  bool get isLastPage => currentPage == (components.length - 1);

  @override
  void onInit() => fetchComponents();

  @override
  void onClose() => pageController.dispose();

  void previusPage() => changePageTo(currentPage - 1);
  void nextPage() => changePageTo(currentPage + 1);
  void changePageTo(int page) => isLastPage ? finish() : _changePageTo(page);
  void _changePageTo(int page) => pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );

  void fetchComponents() =>
      _workshopRepository.getAllComponents(workshopId).then(_setComponents);

  void _setComponents(List<Component> value) => _components.value = value;

  Future<void> finish() async {
    try {
      await _subscriptionRepository.complete(uid, workshopId);
      _isFinished.value = true;
      _activateDestructorTimer();
    } catch (e) {
      print('Error al actualizar subscripcion');
    }
  }

  void _activateDestructorTimer() => Timer(Duration(milliseconds: 1000), leave);

  void leave() {
    Get.delete<WorkshopController>();
    Get.back();
  }
}
