import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'widgets/component_background.dart';
import 'widgets/component_body.dart';
import 'widgets/component_header.dart';
import 'widgets/component_navigation_buttons.dart';

class ComponentPageView extends StatelessWidget {
  final Component component;

  ComponentPageView(
    this.component, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      children: [
        ComponentHeader(component),
        ComponentBody(component),
        ComponentNavigationButtons(),
      ],
    );
  }
}
