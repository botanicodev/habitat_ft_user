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

  void nextPage() {
    // VER QUE NO FUNCA
  }

  void previusPage() {
    // VER QUE NO FUNCA
  }
}
