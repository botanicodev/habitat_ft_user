import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'workshop_tile.dart';

class WorkshopsPending extends GetView<HomeController> {
  const WorkshopsPending({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoadingPending) return CircularProgressIndicator();
      return buildListView();
    });
  }

  Widget buildListView() {
    return Obx(() {
      if (controller.pendingWorkshops.isNull)
        return Text('Se rompio algo, trata en un rato');

      if (controller.pendingWorkshops.isEmpty)
        return Text('No tenes talleres para hacer');

      return Container(
        height: Get.height * 0.4,
        child: ListView.builder(
          itemCount: controller.pendingWorkshops.length,
          itemBuilder: (context, i) {
            return WorkshopTile(workshop: controller.pendingWorkshops[i]);
          },
        ),
      );
    });
  }
}
