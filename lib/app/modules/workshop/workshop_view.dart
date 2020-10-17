import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

import 'widgets/navigation_bar.dart';

class WorkshopView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }

  get appBar => BuildWidget.appBar();
  get body => Obx(buildByObx);

  Widget buildByObx() =>
      controller.components.isEmpty ? circularProgressIndicator : _body;

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
        ),
      );

  get children => controller.components.map(mapComponentToView).toList();

  Widget mapComponentToView(Component component) =>
      Mapper.componentToWidget(component);

  get navigation => NavigationBar();
}
