import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/controllers/workshop_list_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/workshop_tile.dart';

class WorkshopList extends GetWidget<WorkshopListController> {
  WorkshopList.pending() {
    controller.fetchByPendingStatus();
  }

  WorkshopList.completed() {
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
