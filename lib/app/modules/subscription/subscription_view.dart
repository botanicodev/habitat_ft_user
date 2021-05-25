import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/subscription/subscription_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

import 'widgets/workshop_player/workshop_player.dart';

class SubscriptionView extends GetView<SubscriptionController> {
  const SubscriptionView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildWidget.appBarBackButton(),
      body: const WorkshopPlayer(),
    );
  }
}
