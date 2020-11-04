import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/snackbar.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/download_button/download_button_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/video_player/video_player_controller.dart';

class WorkshopController extends GetxController {
  final _workshopRepo = Get.find<WorkshopRepository>();
  final _subscriptionRepo = Get.find<SubscriptionRepository>();
  final Subscription _subscription = Get.arguments['subscription'];

  PageController componentListPageController = PageController(initialPage: 0);
  RxList<Component> _componentList = <Component>[].obs;
  RxBool _isWorkshopFinished = false.obs;

  List<Component> get components => _componentList;
  bool get isWorkshopFinished => _isWorkshopFinished.value;
  bool get isLastPage => currentPage == (components.length - 1);
  int get currentPage => componentListPageController.page.round();
  int get previusPage => currentPage - 1;
  int get nextPage => currentPage + 1;

  @override
  void onInit() => fetchComponentList();

  void fetchComponentList() =>
      _workshopRepo.getAllComponents(_subscription.id).then(_setComponentList);

  void _setComponentList(List<Component> value) => _componentList.value = value;

  void navigateTo(NavigateDirection direction) =>
      direction == NavigateDirection.previus ? toPreviusPage() : toNextPage();

  void toPreviusPage() => changePageTo(previusPage);
  void toNextPage() => isLastPage ? finish() : changePageTo(nextPage);

  void changePageTo(int page) => componentListPageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );

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

  void _activateDestructorTimer() => Timer(Duration(milliseconds: 1000), leave);

  void leave() {
    // Get.delete<AudioPlayerController>();
    // Get.delete<VideoPlayerController>();
    // Get.delete<DownloadButtonController>();
    // Get.delete<WorkshopController>();
    Get.back();
  }

  @override
  void onClose() => componentListPageController?.dispose();
}
