import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/customer_drawer/widgets/customer_drawer.dart/customer_drawer.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list/widgets/subscription_tile.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
import 'package:habitat_ft_user/app/utils/widgets/separator/separator.dart';

import 'widgets/workshops_title.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildWidget.appBar(),
      drawer: CustomerDrawer(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 40.0),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const WorkshopsTitle(),
                controller.isLoadingSubscriptionsPending$.value
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        children: controller.subcriptionsPending$
                            .map((s) => SubscriptionTile(s, onTap: () {}))
                            .toList(),
                      ),
                const Separator('Completados'),
                controller.isLoadingSubscriptionsCompleted$.value
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        children: controller.subcriptionsCompleted$
                            .map((s) => SubscriptionTile(s, onTap: () {}))
                            .toList(),
                      ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: CustomColor.CELESTE_HABITAT,
        onPressed: () {
          controller.getCompletedSubscriptions();
          controller.getPendingSubscriptions();
        },
      ),
    );
  }

  // SubscriptionList get pendingSubcriptions => SubscriptionList(
  //       subscriptions: controller.pending,
  //       onTap: controller.onTap,
  //     );

  // SubscriptionList get completedSubcriptions => SubscriptionList(
  //       subscriptions: controller.completed,
  //       onTap: controller.onTap,
  //     );

  // @override
  // Widget build(_) => Layout(
  //       appBar: BuildWidget.appBar(),
  //       drawer: const CustomerDrawer(),
  // title: const WorkshopsTitle(),
  //       pendingSubscriptions: Obx(() => pendingSubcriptions),
  //       completedSubscriptions: Obx(() => completedSubcriptions),
  //     );
}
