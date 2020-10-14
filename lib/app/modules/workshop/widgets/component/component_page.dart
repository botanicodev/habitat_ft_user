import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'component_background.dart';
import 'component_body.dart';
import 'component_header.dart';
import 'component_navigation_buttons.dart';

class ComponentPage extends StatelessWidget {
  final Component component;

  ComponentPage(
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
