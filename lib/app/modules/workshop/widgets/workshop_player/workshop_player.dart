import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';

import 'widgets/components_page_view/components_page_view.dart';
import 'widgets/navigation_bar/navigation_bar.dart';

class WorkshopPlayer extends GetView<WorkshopController> {
  const WorkshopPlayer();

  @override
  Widget build(_) => Column(children: [
        const ComponentsPageView(),
        const NavigationBar(),
      ]);
}
