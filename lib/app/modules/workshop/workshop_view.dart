import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

import 'widgets/component_navigation_buttons.dart';
import 'widgets/component_page_view.dart';

class WorkshopView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildWidget.appBar(),
      body: Obx(body),
    );
  }

  Widget body() =>
      controller.components.isEmpty ? circularProgressIndicator : content;

  get circularProgressIndicator => Center(child: CircularProgressIndicator());

  get content => Column(
        children: [
          ComponentPageView(),
          ComponentNavigationButtons(),
        ],
      );
}
