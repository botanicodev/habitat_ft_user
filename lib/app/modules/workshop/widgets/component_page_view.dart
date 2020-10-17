import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

import '../workshop_controller.dart';

class ComponentPageView extends GetView<WorkshopController> {
  ComponentPageView();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: controller.pageController,
        children: children,
      ),
    );
  }

  get children => controller.components.map(Mapper.componentToWidget).toList();
}
