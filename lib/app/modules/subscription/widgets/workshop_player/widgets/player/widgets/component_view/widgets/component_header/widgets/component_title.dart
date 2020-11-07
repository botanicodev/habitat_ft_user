import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class ComponentTitle extends StatelessWidget {
  final Component component;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  // + TODO ANALIZAR
  final double width;
  final int maxLines;
  final TextOverflow overflow;
  // -

  const ComponentTitle(
    this.component, {
    this.alignment = Alignment.center,
    this.width = 333,
    this.maxLines = 3,
    this.overflow = TextOverflow.ellipsis,
    this.padding = const EdgeInsets.symmetric(horizontal: 10),
  });

  TextStyle get style =>
      CustomerStyles.TITULO_3.copyWith(color: component.color);

  @override
  Widget build(_) => Expanded(
        child: Container(
          alignment: alignment,
          padding: padding,
          width: width,
          child: Text(
            component.title,
            style: style,
            maxLines: maxLines,
            overflow: overflow,
          ),
        ),
      );
}
