import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/body.dart';

import 'background.dart';
import 'page_header.dart';
import 'navigation_buttons.dart';

class PageComponent extends StatelessWidget {
  final Component component;

  PageComponent(
    this.component, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      children: [
        PageHeader(component),
        Body(component),
        NavigationButtons(),
      ],
    );
  }
}
