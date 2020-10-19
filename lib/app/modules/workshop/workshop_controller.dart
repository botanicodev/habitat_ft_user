import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';

class WorkshopController extends GetxController {
  final repository =
      WorkshopRepository(); // TODO REFACTOR, inyenccion dependencia
  PageController pageController = PageController(initialPage: 0);
  RxList<Component> _components = <Component>[].obs;

  List<Component> get components => _components;
  String get workshopId => Get.arguments['workshopId'];
  int get currentPage => pageController.page.round();

  void _getComponents() =>
      repository.getAllComponents(workshopId).then(_setComponents);

  void _setComponents(List<Component> value) => _components.value = value;

  @override
  void onInit() => _getComponents();

  @override
  void onClose() => pageController.dispose();

  void previusPage() => _moveToPage(currentPage - 1);
  void nextPage() => _moveToPage(currentPage + 1);

  void _moveToPage(int page) => pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
}
