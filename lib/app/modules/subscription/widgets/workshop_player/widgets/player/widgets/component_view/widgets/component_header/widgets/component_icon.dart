import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class ComponentIcon extends StatelessWidget {
  final Component component;
  final double radius, size;
  final Color iconColor;

  const ComponentIcon(
    this.component, {
    this.radius = 20,
    this.size = 25,
    this.iconColor = CustomColor.BLANCO,
  });

  @override
  Widget build(_) => CircleAvatar(
      backgroundColor: component.color,
      radius: radius,
      child: Icon(
        component.icon,
        size: size,
        color: iconColor,
      ));
}
