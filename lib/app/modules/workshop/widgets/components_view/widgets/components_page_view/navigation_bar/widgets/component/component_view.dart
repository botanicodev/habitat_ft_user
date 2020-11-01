import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';
import 'widgets/header.dart';
import 'widgets/layout.dart';

class ComponentView extends StatelessWidget {
  final Component component;

  const ComponentView(this.component);

  @override
  Widget build(_) => Layout(
        header: Header(component),
        body: Mapper.componentToWidget(component),
      );
}
