import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'workshop_tile.dart';

class WorkshopsPending extends GetView<HomeController> {
  const WorkshopsPending({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.isLoadingPending.value
        ? CircularProgressIndicator()
        : buildListView());
  }

  bool hasWorkshop() =>
      controller.pendingWorkshops != null &&
      controller.pendingWorkshops.length > 0;

  Widget buildListView() {
    if (hasWorkshop()) {
      return Container(
        height: Get.height * 0.4,
        child: ListView.builder(
          itemCount: controller.pendingWorkshops.length,
          itemBuilder: (context, i) {
            return WorkshopTile(workshop: controller.pendingWorkshops[i]);
          },
        ),
      );
    } else {
      return Text('No posee talleres pendientes por realizar');
    }
  }
}
