import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/utils/snackbar.dart';

import 'widgets/finished_view/finished_view.dart';

class SubscriptionController extends GetxController {
  final _subscriptionRepo = Get.find<SubscriptionRepository>();
  final Subscription _subscription = Get.arguments['subscription'];

  Subscription get subscription => this._subscription;

  Future<void> finish() async {
    try {
      subscription.setComplete();
      // await _subscriptionRepo.update(subscription);
      Get.off(FinishedView());
    } catch (e) {
      CustomerSnackbar.error(
        message: 'Ocurrio un error al finalizar el taller, intente mas tarde',
      );
    }
  }
}
