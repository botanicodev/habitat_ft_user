import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'widgets/component_body.dart';
import 'widgets/component_header/component_header.dart';
import 'widgets/layout.dart';

class ComponentView extends StatelessWidget {
  final Component component;

  const ComponentView(this.component);

  @override
  Widget build(_) => Layout(
        header: ComponentHeader(component),
        body: ComponentBody(component),
      );

  static ComponentView byModel(Component component) => ComponentView(component);
}
