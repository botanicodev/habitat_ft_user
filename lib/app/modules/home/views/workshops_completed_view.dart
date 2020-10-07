import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/workshop_tile.dart';
import '../controllers/workshops_completed_controller.dart';

class WorkshopsCompletedView extends GetView<WorkshopsCompletedController> {
  const WorkshopsCompletedView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
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
        return Center(child: Text('No completaste ningun taller'));

      return Column(
        children: controller.workshops
            .map((workshop) => WorkshopTile(workshop: workshop))
            .toList(),
      );
    });
  }
}
