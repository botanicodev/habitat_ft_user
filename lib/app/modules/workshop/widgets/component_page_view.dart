import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/body.dart';

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
      children: [
        Header(component),
        Body(component),
        NavigationButtons(),
      ],
    );
  }
}
