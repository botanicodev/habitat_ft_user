import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';

import 'widgets/component_view/component_view.dart';

class ComponentsPageView extends GetView<WorkshopController> {
  final ScrollPhysics physics;

  const ComponentsPageView({
    this.physics = const NeverScrollableScrollPhysics(),
  });

  @override
  Widget build(_) => Expanded(
        child: PageView(
          controller: controller.componentListPageController,
          children: controller.components.map(ComponentView.byModel).toList(),
          physics: physics,
        ),
      );
}
