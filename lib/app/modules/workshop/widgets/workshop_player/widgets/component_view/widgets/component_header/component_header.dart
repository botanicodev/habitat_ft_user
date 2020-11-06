import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'widgets/component_icon.dart';
import 'widgets/component_title.dart';

class ComponentHeader extends StatelessWidget {
  final Component component;
  final EdgeInsetsGeometry padding;

  const ComponentHeader(
    this.component, {
    this.padding = const EdgeInsets.only(bottom: 15),
  });

  @override
  Widget build(_) => Padding(
        padding: padding,
        child: Row(children: [
          ComponentIcon(component),
          ComponentTitle(component),
        ]),
      );
}
