import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';
import 'package:habitat_ft_user/app/modules/subscription/subscription_controller.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class WorkshopPlayerController extends GetxController {
  final _workshopRepo = Get.find<WorkshopRepository>();
  final _subscriptionController = Get.find<SubscriptionController>();

  PageController pageController = PageController(initialPage: 0);

  RxList<Component> _componentList = <Component>[].obs;

  List<Component> get componentList => _componentList;

  bool get isLastComponent => currentPage == (componentList.length - 1);

  String get _subscriptionId => _subscriptionController.subscription.id;

  int get previusPage => currentPage - 1;
  int get nextPage => currentPage + 1;
  int get currentPage => pageController.page.round();

  RxInt currentPageStream = 0.obs;

  @override
  void onInit() => fetchComponentList();

  void fetchComponentList() =>
      _workshopRepo.getAllComponents(_subscriptionId).then(_setComponentList);

  void _setComponentList(List<Component> value) => _componentList.value = value;

  void navigateTo(NavigateDirection direction) =>
      direction == NavigateDirection.previus ? toPreviusPage() : toNextPage();

  void toPreviusPage() {
    currentPageStream.value = currentPageStream.value - 1;
    changePageTo(previusPage);
  }

  void toNextPage() {
    currentPageStream.value = currentPageStream.value + 1;
    isLastComponent ? _subscriptionController.finish() : changePageTo(nextPage);
  }

  void changePageTo(int page) => pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );

  @override
  void onClose() => pageController?.dispose();
}
