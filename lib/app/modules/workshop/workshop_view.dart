import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

import 'widgets/navigation_bar.dart';

class WorkshopView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }

  get appBar => BuildWidget.appBar();
  get body =>
      Obx(controller.components.isEmpty ? circularProgressIndicator : layout);

  get circularProgressIndicator => Center(child: CircularProgressIndicator());

  get layout => Column(
        children: [
          pageView,
          navigation,
        ],
      );

  get pageView => Expanded(
        child: PageView(
          controller: controller.pageController,
          children: controller.children,
        ),
      );

  get navigation => NavigationBar();
}
