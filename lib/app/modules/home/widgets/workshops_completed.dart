import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'workshop_tile.dart';

class WorkshopsCompleted extends GetView<HomeController> {
  const WorkshopsCompleted({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Obx(() {
        if (controller.isLoadingCompleted) return Center(child: CircularProgressIndicator());
        return buildListView();
      }),
    );
  }

  Widget buildListView() {
    return Obx(() {
      if (controller.completedWorkshops.isNull)
        return Center(child: Text('Se rompio algo, trata en un rato'));

      if (controller.completedWorkshops.isEmpty)
        return Center(child: Text('No completaste ningun taller'));

      return Column(
        children: controller.completedWorkshops
            .map((workshop) => WorkshopTile(workshop: workshop))
            .toList(),
      );
    });
  }
}
