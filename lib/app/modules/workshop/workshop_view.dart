import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

import 'widgets/component_navigation_buttons.dart';
import 'widgets/component_page_view.dart';

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
      controller.components.isEmpty ? circularProgressIndicator : buildBody;

  get circularProgressIndicator => Center(child: CircularProgressIndicator());

  get buildBody => Column(
        children: [
          ComponentPageView(),
          ComponentNavigationButtons(),
        ],
      );
}
