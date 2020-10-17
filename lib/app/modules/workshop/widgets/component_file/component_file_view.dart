import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_background.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';

import 'widgets/component_dowload_button.dart';
import 'component_file_controller.dart';

class ComponentFileView extends GetWidget<ComponentFileController> {
  ComponentFileView(Component component) {
    controller.init(component);
  }

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      header: header,
      body: body,
    );
  }

  Widget get header => ComponentHeader(controller.component);
  Widget get body => Padding(
        padding: EdgeInsets.symmetric(horizontal: 88),
        child: ComponentDownloadButton(controller.component),
      );
}
