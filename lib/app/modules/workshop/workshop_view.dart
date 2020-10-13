import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

import 'widgets/component_page_view.dart';

class WorkshopView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildWidget.buildAppBar(),
      body: Obx(
        () {
          return PageView(
            controller: controller.pageController,
            children: controller.components
                .map((component) => ComponentPageView(component))
                .toList(),
          );
        },
      ),
    );
  }
}