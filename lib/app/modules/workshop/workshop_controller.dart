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

// TODO REFACTOR
class WorkshopController extends GetxController {
  final WorkshopRepository _workshopRepository = Get.find();
  final SubscriptionRepository _subscriptionRepo = Get.find();
  final Subscription _subscription = Get.arguments['subscription'];

  PageController pageController = PageController(initialPage: 0);
  RxList<Component> _components = <Component>[].obs;
  RxBool _isFinished = false.obs;

  List<Component> get components => _components;
  bool get isFinished => _isFinished.value;
  int get currentPage => pageController.page.round();
  bool get isLastPage => currentPage == (components.length - 1);

  set isFinished(bool value) => _isFinished.value = value;

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

  void fetchComponents() => _workshopRepository
      .getAllComponents(_subscription.id)
      .then(_setComponents);

  void _setComponents(List<Component> value) => _components.value = value;

  Future<void> finish() async {
    try {
      _subscription.status = SubscriptionStatus.completed;
      await _subscriptionRepo.update(_subscription);
      isFinished = true;
      _activateDestructorTimer();
    } catch (e) {
      CustomerSnackbar.error(
          message:
              'Ocurrio un error al finalizar el taller, intente mas tarde');
    }
  }

  void _activateDestructorTimer() => Timer(Duration(milliseconds: 1000), leave);

  void leave() {
    Get.delete<WorkshopController>();
    Get.delete<AudioPlayerController>();
    Get.delete<VideoPlayerController>();
    Get.delete<DownloadButtonController>();
    Get.back();
  }
}
