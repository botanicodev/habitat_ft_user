import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

import '../../data/models/component_model.dart';

class WorkshopController extends GetxController {
  PageController pageController;

  RxList<Component> _components = [
    Component(
      title: 'Componente video',
      type: ComponentType.video,
      resourceUrl: '',
    ),
    Component(
      title: 'Componente imagen',
      type: ComponentType.image,
      resourceUrl: '',
    ),
    Component(
      title: 'Componente audio',
      type: ComponentType.audio,
      resourceUrl: '',
    ),
    Component(
      title: 'Componente file',
      type: ComponentType.file,
      resourceUrl: '',
    ),
  ].obs;

  List<Component> get components => _components.value;

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    String workshopId = Get.arguments['workshopId'];
    print(workshopId);
  }

  @override
  void onClose() {
    pageController.dispose();
  }

  void previusPage() => _moveToPage(pageController.page.round() - 1);
  void nextPage() => _moveToPage(pageController.page.round() + 1);

  void _moveToPage(int page) => pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
}
