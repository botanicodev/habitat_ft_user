import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

import 'component_controller.dart';
import 'widgets/header.dart';
import 'widgets/layout.dart';

class ComponentView extends GetWidget<ComponentController> {
  ComponentView(Component component) {
    controller.body = Mapper.componentToWidget(component);
    controller.header = Header(component);
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      header: header,
      body: body,
    );
  }

  get header => Obx(() => controller.header);

  get body => Obx(() => controller.body);
}
