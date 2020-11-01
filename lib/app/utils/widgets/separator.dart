import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class Separator extends StatelessWidget {
  final String value;
  final EdgeInsetsGeometry margin;
  final Color lineColor;
  final double lineHeight;

  const Separator(
    this.value, {
    this.margin = const EdgeInsets.symmetric(horizontal: 12),
    this.lineColor = CustomerColors.CELESTE_HABITAT,
    this.lineHeight = 0.5,
  });

  TextStyle get style => CustomerStyles.BOTONES_CELESTE;

  Widget get line => Expanded(
        child: Container(
          margin: margin,
          height: lineHeight,
          color: lineColor,
        ),
      );

  Widget get text => Text(value, style: style);

  @override
  Widget build(BuildContext context) => Row(children: [line, text, line]);
}
