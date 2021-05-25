import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class FinishedIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final double size;

  const FinishedIcon({
    this.iconData = Icons.check_circle_outline,
    this.color = CustomColor.BLANCO,
    this.size = 150,
  });

  @override
  Widget build(_) => Icon(iconData, color: color, size: size);
}
