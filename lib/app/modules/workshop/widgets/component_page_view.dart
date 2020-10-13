import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'background.dart';
import 'header.dart';
import 'navigation_buttons.dart';

class ComponentPageView extends StatelessWidget {
  final Component component;

  ComponentPageView(
    this.component, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Header(component),
          // VER DE METER UN CONTROLLER PARA CADA PAGE,
          Spacer(),
          NavigationButtons(),
        ],
      ),
    );
  }
}
