import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/competitor.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';

class HomeController extends GetxController {
  final subscriptionRepository = SubscriptionRepository();

  Competitor competitor;

  RxList subcriptionsPending$ = [].obs;
  RxList subcriptionsCompleted$ = [].obs;
  RxBool isLoadingSubscriptionsPending$ = false.obs;
  RxBool isLoadingSubscriptionsCompleted$ = false.obs;

  @override
  void onInit() async {
    super.onInit();
    competitor = Get.arguments;

    getPendingSubscriptions();
    getCompletedSubscriptions();
  }

  void getPendingSubscriptions() async {
    isLoadingSubscriptionsPending$.value = true;
    subcriptionsPending$.clear();
    subcriptionsPending$.addAll(
        await subscriptionRepository.getPendingSubscriptions(competitor.id));
    isLoadingSubscriptionsPending$.value = false;
  }

  void getCompletedSubscriptions() async {
    isLoadingSubscriptionsCompleted$.value = true;
    subcriptionsCompleted$.clear();
    subcriptionsCompleted$.addAll(
        await subscriptionRepository.getCompletedSubscriptions(competitor.id));
    isLoadingSubscriptionsCompleted$.value = false;
  }

  // SubscriptionRepository get _repo => Get.put(SubscriptionRepository());

  // StreamSubscription _pendingStreamSubscription, _completedStreamSubscription;

  // RxList<Subscription> _pending = <Subscription>[].obs;
  // RxList<Subscription> _completed = <Subscription>[].obs;

  // List<Subscription> get pending => _pending.value;
  // List<Subscription> get completed => _completed.value;

  // void _setPending(List<Subscription> value) => _pending.value = value;
  // void _setCompleted(List<Subscription> value) => _completed.value = value;

  // @override
  // void onInit() => fetch();

  // @override
  // void onClose() => _cancelStreamSubscriptions();

  // void fetch() {
  //   _cancelStreamSubscriptions();
  //   _pendingStreamSubscription = _fetchPending();
  //   _completedStreamSubscription = _fetchCompleted();
  // }

  // void _cancelStreamSubscriptions() {
  //   _pendingStreamSubscription?.cancel();
  //   _completedStreamSubscription?.cancel();
  // }

  // StreamSubscription _fetchPending() => _repo.listen(
  //       status: SubscriptionStatus.pending,
  //       whenHasData: _setPending,
  //     );

  // StreamSubscription _fetchCompleted() => _repo.listen(
  //       status: SubscriptionStatus.completed,
  //       whenHasData: _setCompleted,
  //     );

  // void onTap(Subscription subscription) => Get.toNamed(Routes.SUBSCRIPTION,
  //     arguments: {"subscription": subscription});
}
