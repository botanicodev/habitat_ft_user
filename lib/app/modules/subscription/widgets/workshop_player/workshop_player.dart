import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_loading.dart';

import 'widgets/player/player.dart';
import 'workshop_player_controller.dart';

class WorkshopPlayer extends GetView<WorkshopPlayerController> {
  const WorkshopPlayer();

  @override
  Widget build(_) => Obx(
        () => controller.componentList.isEmpty ? CustomerLoading() : Player(),
      );
}
