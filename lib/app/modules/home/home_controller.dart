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

  @override
  void onInit() => fetch();

  @override
  void onClose() => _cancelStreamSubscriptions();

  void fetch() {
    _cancelStreamSubscriptions();
    _pendingStreamSubscription = _fetchPending();
    _completedStreamSubscription = _fetchCompleted();
  }

  void _cancelStreamSubscriptions() {
    _pendingStreamSubscription?.cancel();
    _completedStreamSubscription?.cancel();
  }

  StreamSubscription _fetchPending() => _repo.listen(
        status: SubscriptionStatus.pending,
        whenHasData: _setPending,
      );

  StreamSubscription _fetchCompleted() => _repo.listen(
        status: SubscriptionStatus.completed,
        whenHasData: _setCompleted,
      );

  void _setPending(List<Subscription> value) => _pending.value = value;

  void _setCompleted(List<Subscription> value) => _completed.value = value;

  void onTap(Subscription subscription) =>
      Get.toNamed(Routes.WORKSHOP, arguments: {"subscription": subscription});
}
