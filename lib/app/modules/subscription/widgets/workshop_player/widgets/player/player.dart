import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../workshop_player_controller.dart';
import 'widgets/component_view/component_view.dart';
import 'widgets/components_page_view.dart';
import 'widgets/navigation_bar/navigation_bar.dart';

class Player extends GetView<WorkshopPlayerController> {
  const Player();

  @override
  Widget build(_) => Column(children: [
        ComponentsPageView(
          pageController: controller.pageController,
          componentList:
              controller.componentList.map(ComponentView.byModel).toList(),
        ),
        const NavigationBar(),
      ]);
}
