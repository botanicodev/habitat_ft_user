import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';
import 'widgets/header.dart';
import 'widgets/layout.dart';

class ComponentView extends StatelessWidget {
  final Component component;

  const ComponentView(this.component);

  @override
  Widget build(BuildContext context) {
    return Layout(
      header: header,
      body: body,
    );
  }

  get header => Header(component);

  get body => Mapper.componentToWidget(component);
}
