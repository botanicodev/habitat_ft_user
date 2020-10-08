import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/controllers/subscription_list_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_tile.dart';

class SubscriptionList extends GetWidget<SubscriptionListController> {
  SubscriptionList.pending() {
    controller.fetchByPendingStatus();
  }

  SubscriptionList.completed() {
    controller.fetchByCompletedStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Obx(() {
        if (controller.isLoading)
          return Center(child: CircularProgressIndicator());
        return buildListView();
      }),
    );
  }

  Widget buildListView() {
    return Obx(() {
      if (controller.subscriptions.isEmpty)
        return Center(child: Text('No tenes talleres para hacer'));

      return Column(
        children: controller.subscriptions
            .map((subscription) => SubscriptionTile(subscription: subscription))
            .toList(),
      );
    });
  }
}
