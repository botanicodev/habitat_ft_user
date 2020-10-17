import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

import 'component_header.dart';
import 'component_image/component_image.dart';
import 'component_layout.dart';

class ComponentView extends StatelessWidget {
  final Component component;
  ComponentView(this.component);

  @override
  Widget build(BuildContext context) {
    return ComponentLayout(
      header: header,
      body: body,
    );
  }

  get header => ComponentHeader(component);
  get body {
    switch (component.mediaType) {
      case MediaType.video:
      case MediaType.image:
        return ComponentImage(component);
      case MediaType.file:
      case MediaType.audio:
      default:
        return notImplementhedComponent;
    }
  }

  get notImplementhedComponent => Text('Componente no implementado');
}
