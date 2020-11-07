import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

// TODO REFACTOR
class Part extends StatelessWidget {
  static const _completedBorderRadius =
      BorderRadius.only(topLeft: _radius, bottomLeft: _radius);

  static const _incompleteBorderRadius =
      BorderRadius.only(topRight: _radius, bottomRight: _radius);

  static const Radius _radius = Radius.circular(100);

  final int flex;
  final Color color;
  final BorderRadiusGeometry borderRadius;
  final double height = 5;

  const Part.completed({
    @required this.flex,
    this.color = CustomerColors.CELESTE_HABITAT,
    this.borderRadius = _completedBorderRadius,
  });

  const Part.incomplete({
    @required this.flex,
    this.color = CustomerColors.GRIS_25,
    this.borderRadius = _incompleteBorderRadius,
  });

  @override
  Widget build(_) => Expanded(
        flex: flex,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
          ),
        ),
      );
}
