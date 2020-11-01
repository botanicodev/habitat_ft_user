import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

import 'navigation_bar/navigation_bar.dart';

class ComponentsPageView extends GetView<WorkshopController> {
  final ScrollPhysics physics;

  const ComponentsPageView({
    this.physics = const NeverScrollableScrollPhysics(),
  });

  @override
  Widget build(_) => Column(children: [
        Expanded(
          child: PageView(
            controller: controller.pageController,
            children:
                controller.components.map(Mapper.componentToView).toList(),
            physics: physics,
          ),
        ),
        const NavigationBar(),
      ]);
}
