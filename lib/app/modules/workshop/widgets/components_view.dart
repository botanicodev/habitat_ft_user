import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

import '../workshop_controller.dart';
import 'navigation_bar.dart';

class ComponentsView extends GetView<WorkshopController> {
  const ComponentsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }

  // TODO REFACTOR
  get appBar => AppBar(
        backgroundColor: CustomerColors.CELESTE_HABITAT,
        title: Image.asset(CustomerAssets.WHITE_LOGO_MIN),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: CustomerColors.BLANCO,
            size: 20,
          ),
          onPressed: controller.leave,
        ),
      );

  get body => Obx(
        () => controller.components.isEmpty ? circularProgressIndicator : _body,
      );

  get circularProgressIndicator => Center(child: CircularProgressIndicator());

  get _body => Column(
        children: [
          pageView,
          navigation,
        ],
      );

  get pageView => Expanded(
        child: PageView(
          controller: controller.pageController,
          children: children,
          physics: NeverScrollableScrollPhysics(),
        ),
      );

  get children => controller.components.map(Mapper.componentToView).toList();
  get navigation => NavigationBar();
}
