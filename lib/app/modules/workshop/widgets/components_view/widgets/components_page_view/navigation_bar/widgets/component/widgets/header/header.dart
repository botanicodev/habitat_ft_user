import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'widgets/component_icon.dart';
import 'widgets/component_title.dart';

class Header extends StatelessWidget {
  final Component component;

  const Header(this.component);

  @override
  Widget build(_) =>
      Row(children: [ComponentIcon(component), ComponentTitle(component)]);
}
