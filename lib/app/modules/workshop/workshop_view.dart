import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';

import 'widgets/components_view/components_view.dart';
import 'widgets/finished_view/finished_view.dart';

class WorkshopView extends GetView<WorkshopController> {
  const WorkshopView();

  @override
  Widget build(_) => Obx(
        () => controller.isFinished
            ? const FinishedView()
            : const ComponentsView(),
      );
}
