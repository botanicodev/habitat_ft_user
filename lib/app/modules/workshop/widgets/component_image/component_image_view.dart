import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_background.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

import 'component_image_controller.dart';

class ComponentImageView extends GetWidget<ComponentImageController> {
  ComponentImageView(Component component, {Key key}) : super(key: key) {
    controller.init(component: component);
  }

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      header: ComponentHeader(controller.component),
      body: FadeInImage.assetNetwork(
        placeholder: CustomerAssets.LOADER,
        image: controller.component.url,
        imageErrorBuilder: imageErrorBuilder,
      ),
    );
  }

  Widget imageErrorBuilder(context, object, stacktrace) =>
      Text('No se puede cargar la imagen en este momento :(');
}
