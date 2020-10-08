import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/hdrawer.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import 'widgets/separator.dart';
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
            SubscriptionList.pending(),
            Separator(),
            SubscriptionList.completed(),
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
