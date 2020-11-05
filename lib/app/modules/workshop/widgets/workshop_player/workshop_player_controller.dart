import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

// TODO REFACTOR
class WorkshopPlayerController extends GetxController {
  PageController pageController = PageController(initialPage: 0);

  WorkshopController get _workshopController => Get.find<WorkshopController>();

  List<Component> get componentList => _workshopController.componentList;
  bool get isLastPage => currentPage == (componentList.length - 1);
  int get currentPage => pageController.page.round();
  int get previusPage => currentPage - 1;
  int get nextPage => currentPage + 1;

  void navigateTo(NavigateDirection direction) =>
      direction == NavigateDirection.previus ? toPreviusPage() : toNextPage();

  void toPreviusPage() => changePageTo(previusPage);
  void toNextPage() =>
      isLastPage ? _workshopController.finish() : changePageTo(nextPage);

  void changePageTo(int page) => pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );

  @override
  void onClose() => pageController?.dispose();
}
