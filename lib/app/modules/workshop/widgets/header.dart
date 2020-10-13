import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class Header extends StatelessWidget {
  const Header(
    this.component, {
    Key key,
  }) : super(key: key);

  final Component component;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildIcon(),
        Spacer(),
        buildText(),
        Spacer(),
      ],
    );
  }

  Widget buildIcon() {
    var container = Container(
      color: component.color,
      height: 35,
      width: 35,
      child: Icon(
        component.icon,
        size: 25,
        color: CustomerColors.BLANCO,
      ),
    );
    return ClipOval(
      child: container,
    );
  }

  Widget buildText() => Text(
        component.title,
        style: CustomerStyles.TITULO_3.copyWith(
          color: component.color,
        ),
      );
}
