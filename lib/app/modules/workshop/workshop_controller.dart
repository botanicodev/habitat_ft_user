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

  List<Component> get components => _components;
  String get workshopId => Get.arguments['workshopId'];
  int get currentPage => pageController.page.round();
  bool get isFinished => _isFinished.value;

  @override
  void onInit() => fetchComponents();

  @override
  void onClose() => pageController.dispose();

  void previusPage() => _moveToPage(currentPage - 1);
  void nextPage() => _moveToPage(currentPage + 1);

  void _moveToPage(int page) => pageController.animateToPage(
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
    Timer(Duration(seconds: 2), leave);
  }

  void leave() {
    Get.delete<WorkshopController>();
    Get.back();
  }
}
