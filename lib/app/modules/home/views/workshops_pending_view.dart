import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/controllers/workshops_pending_controller.dart';

import '../widgets/workshop_tile.dart';

class WorkshopsPendingView extends GetView<WorkshopsPendingController> {
  const WorkshopsPendingView({Key key}) : super(key: key);

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
      if (controller.workshops.isEmpty)
        return Center(child: Text('No tenes talleres para hacer'));

      return Column(
        children: controller.workshops
            .map((workshop) => WorkshopTile(workshop: workshop))
            .toList(),
      );
    });
  }
}
