import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/assets.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/widgets/hdrawer.dart';

import 'widgets/workshop_separetor.dart';
import 'widgets/workshops_completed.dart';
import 'widgets/workshops_pending.dart';
import 'widgets/workshops_title.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: HDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WorkshopsTitle(),
            WorkshopsPending(),
            WorkshopSeparetor(),
            WorkshopsCompleted(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: HColors.CELESTE_HABITAT,
      title: Image.asset(HAssets.WHITE_LOGO_MIN),
      centerTitle: true,
    );
  }
}
