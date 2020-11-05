import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../workshop_player_controller.dart';
import 'widgets/component_view/component_view.dart';

class ComponentsPageView extends GetView<WorkshopPlayerController> {
  final ScrollPhysics physics;

  const ComponentsPageView({
    this.physics = const NeverScrollableScrollPhysics(),
  });

  @override
  Widget build(_) => Expanded(
        child: PageView(
          controller: controller.pageController,
          children:
              controller.componentList.map(ComponentView.byModel).toList(),
          physics: physics,
        ),
      );
}
