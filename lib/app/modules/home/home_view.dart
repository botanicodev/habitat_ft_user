import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/layout.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/customer_drawer/widgets/customer_drawer.dart/customer_drawer.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

import 'widgets/workshops_title.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: BuildWidget.appBar,
      drawer: const CustomerDrawer(),
      title: const WorkshopsTitle(),
      pendingSubscriptions: SubscriptionList.pending(), // TODO REFACTOR
      completedSubscriptions: SubscriptionList.completed(), // TODO REFACTOR
    );
  }
}
