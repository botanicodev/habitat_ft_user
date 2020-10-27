import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list/subscription_list_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list/widgets/subscription_tile.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class SubscriptionList extends GetWidget<SubscriptionListController> {
  SubscriptionList.pending() {
    controller.fetchByStatus(SubscriptionStatus.pending);
  }

  SubscriptionList.completed() {
    controller.fetchByStatus(SubscriptionStatus.completed);
  }

  @override
  Widget build(BuildContext context) =>
      Obx(() => controller.subscriptions.isEmpty ? empty : subscriptions);

  Widget get empty => Center(child: Text('No se encontraron talleres'));

  Widget get loading => Center(child: CircularProgressIndicator());

  Widget get subscriptions => Column(children: subscriptionList);

  List<Widget> get subscriptionList =>
      controller.subscriptions.map(toTile).toList();

  Widget toTile(Subscription subscription) => SubscriptionTile(
        subscription: subscription,
        onTap: () => controller.onTap(subscription),
      );
}
