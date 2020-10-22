import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';

import 'widgets/components_view.dart';
import 'widgets/finished_view.dart';

class WorkshopView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isFinished ? finishedView : componentsView,
    );
  }

  get finishedView => FinishedView();
  get componentsView => ComponentsView();
}
