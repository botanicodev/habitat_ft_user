import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_loading.dart';

import 'widgets/workshop_player/workshop_player.dart';

class WorkshopView extends GetView<WorkshopController> {
  const WorkshopView();

  @override
  Widget build(_) => Scaffold(
        appBar: BuildWidget.appBarBackButton(),
        body: Obx(
          () => controller.componentList.isEmpty
              ? const CustomerLoading()
              : const WorkshopPlayer(),
        ),
      );
}
