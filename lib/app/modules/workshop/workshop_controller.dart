import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';

class WorkshopController extends GetxController {
  final WorkshopRepository _repository = Get.find();

  PageController pageController = PageController(initialPage: 0);
  RxList<Component> _components = <Component>[].obs;
  RxBool _isFinished = false.obs;
  RxBool _showFinishButton = false.obs;

  List<Component> get components => _components;
  String get workshopId => Get.arguments['workshopId'];
  int get currentPage => pageController.page.round();
  bool get isFinished => _isFinished.value;
  bool get showFinishButton => this._showFinishButton.value;
  bool get isLastPage => currentPage == (components.length - 1);

  @override
  void onInit() => fetchComponents();

  @override
  void onClose() => pageController.dispose();

  void previusPage() => navigatoTo(currentPage - 1);
  void nextPage() => navigatoTo(currentPage + 1);
  bool canNavigate(int page) => (page >= 0 && page < components.length);
  void refreshFinishButton() => _showFinishButton.value = isLastPage;

  Future<void> navigatoTo(int page) async {
    if (canNavigate(page)) {
      await _navigateTo(page);
      refreshFinishButton();
    }
  }

  Future<void> _navigateTo(int page) async =>
      await pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );

  void fetchComponents() =>
      _repository.getAllComponents(workshopId).then(_setComponents);

  void _setComponents(List<Component> value) => _components.value = value;

  void finish() {
    _isFinished.value = true;
    // TODO CREAR REPOSITORY DE SUBSCRIPTION y hacer el complete aca!
    Timer(Duration(milliseconds: 1000), leave);
  }

  void leave() {
    Get.delete<WorkshopController>();
    Get.back();
  }
}
