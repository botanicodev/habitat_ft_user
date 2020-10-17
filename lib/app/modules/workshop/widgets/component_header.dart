import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class ComponentHeader extends StatelessWidget {
  final Component component;

  const ComponentHeader(this.component);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Spacer(),
        title,
        Spacer(),
      ],
    );
  }

  get icon => ClipOval(
        child: Container(
          color: component.color,
          height: 35,
          width: 35,
          child: Icon(
            component.icon,
            size: 25,
            color: CustomerColors.BLANCO,
          ),
        ),
      );

  get title => Text(
        component.title,
        style: CustomerStyles.TITULO_3.copyWith(
          color: component.color,
        ),
      );
}
