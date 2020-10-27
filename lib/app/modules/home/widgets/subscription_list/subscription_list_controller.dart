import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class SubscriptionListController extends GetxController {
  RxList<Subscription> _subscriptions = <Subscription>[].obs;

  StreamSubscription _streamSubscription;
  SubscriptionRepository get _repository => Get.find<SubscriptionRepository>();
  List<Subscription> get subscriptions => _subscriptions;

  void _setSubscriptions(List<Subscription> value) =>
      _subscriptions.value = value;

  void fetchByStatus(SubscriptionStatus status) =>
      _streamSubscription = _repository.all(status, _setSubscriptions);

  void onTap(Subscription subscription) => _navigateToWorkshop(subscription);

  void _navigateToWorkshop(Subscription subscription) =>
      Get.toNamed(Routes.WORKSHOP, arguments: {"workshopId": subscription.id});

  @override
  void onClose() => _streamSubscription.cancel();
}
