import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class Header extends StatelessWidget {
  final Component component;

  const Header(this.component);

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

  get icon => CircleAvatar(
        backgroundColor: component.color,
        radius: 20,
        child: Icon(
          component.icon,
          size: 25,
          color: CustomerColors.BLANCO,
        ),
      );

  get title => Container(
        alignment: Alignment.center,
        width: 333,
        child: Text(
          component.title,
          style: CustomerStyles.TITULO_3.copyWith(
            color: component.color,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      );
}
