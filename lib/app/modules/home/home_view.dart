import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/layout.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list/subscription_list.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/customer_drawer/widgets/customer_drawer.dart/customer_drawer.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

import 'widgets/workshops_title.dart';

class HomeView extends GetView<HomeController> {
  const HomeView();

  SubscriptionList get pendingSubcriptions => SubscriptionList(
        subscriptions: controller.pending,
        onTap: controller.onTap,
      );

  SubscriptionList get completedSubcriptions => SubscriptionList(
        subscriptions: controller.completed,
        onTap: controller.onTap,
      );

  @override
  Widget build(_) => Layout(
        appBar: BuildWidget.appBar(),
        drawer: const CustomerDrawer(),
        title: const WorkshopsTitle(),
        pendingSubscriptions: Obx(() => pendingSubcriptions),
        completedSubscriptions: Obx(() => completedSubcriptions),
      );
}
