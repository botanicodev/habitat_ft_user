import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class HomeController extends GetxController {
  SubscriptionRepository get _repo => Get.find<SubscriptionRepository>();

  StreamSubscription _pendingStreamSubscription, _completedStreamSubscription;

  RxList<Subscription> _pending = <Subscription>[].obs;
  RxList<Subscription> _completed = <Subscription>[].obs;

  List<Subscription> get pending => _pending.value;
  List<Subscription> get completed => _completed.value;

  void _setPending(List<Subscription> value) => _pending.value = value;

  void _setCompleted(List<Subscription> value) => _completed.value = value;

  void fetchPending() => _pendingStreamSubscription =
      _repo.all(SubscriptionStatus.pending, _setPending);

  void fetchCompleted() => _completedStreamSubscription =
      _repo.all(SubscriptionStatus.completed, _setCompleted);

  void fetch() {
    fetchPending();
    fetchCompleted();
  }

  void onTap(Subscription subscription) => _navigateToWorkshop(subscription.id);

  void _navigateToWorkshop(String subscriptionId) =>
      Get.toNamed(Routes.WORKSHOP, arguments: {"workshopId": subscriptionId});

  void _cancelStreamSubscriptions() {
    _pendingStreamSubscription.cancel();
    _completedStreamSubscription.cancel();
  }

  @override
  void onInit() => fetch();

  @override
  void onClose() => _cancelStreamSubscriptions();
}
