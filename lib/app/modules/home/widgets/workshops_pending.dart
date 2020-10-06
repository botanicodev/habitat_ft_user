import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'workshop_tile.dart';

class WorkshopsPending extends GetView<HomeController> {
  const WorkshopsPending({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Obx(() {
        if (controller.isLoadingPending) return CircularProgressIndicator();
        return buildListView();
      }),
    );
  }

  Widget buildListView() {
    return Obx(() {
      if (controller.pendingWorkshops.isNull)
        return Center(child: Text('Se rompio algo, trata en un rato'));

      if (controller.pendingWorkshops.isEmpty)
        return Center(child: Text('No tenes talleres para hacer'));

      return Column(
        children: controller.pendingWorkshops
            .map((workshop) => WorkshopTile(workshop: workshop))
            .toList(),
      );
    });
  }
}
