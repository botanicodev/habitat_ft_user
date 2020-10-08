import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/subscription_model.dart';
import 'package:habitat_ft_user/app/modules/home/services/subscription_service.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class SubscriptionListController extends GetxController {
  SubscriptionService _subscriptionService = Get.find<SubscriptionService>();

  RxList<Subscription> _subscriptions = <Subscription>[].obs;
  RxBool _isLoading = true.obs;
  StreamSubscription _subscription;

  List<Subscription> get subscriptions => _subscriptions;
  bool get isLoading => _isLoading.value;

  void startLoading() => _isLoading.value = true;
  void endLoading() => _isLoading.value = false;

  void fetchByPendingStatus() => fetch(Status.pending);
  void fetchByCompletedStatus() => fetch(Status.completed);

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }

  void fetch(Status status) {
    _subscription = _subscriptionService.allByStatus(status).listen((event) {
      _subscriptions.value =
          event.docs.map((doc) => Subscription.fromJson(doc.data())).toList();
      endLoading();
    });
  }
}
