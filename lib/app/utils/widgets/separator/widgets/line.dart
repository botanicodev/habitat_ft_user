import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class Line extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final Color lineColor;
  final double lineHeight;

  const Line({
    this.margin = const EdgeInsets.symmetric(horizontal: 12),
    this.lineColor = CustomColor.CELESTE_HABITAT,
    this.lineHeight = 0.5,
  });

  @override
  Widget build(_) => Expanded(
        child: Container(
          margin: margin,
          height: lineHeight,
          color: lineColor,
        ),
      );
}
