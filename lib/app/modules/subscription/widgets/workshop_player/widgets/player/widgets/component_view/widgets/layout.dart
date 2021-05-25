import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class Layout extends StatelessWidget {
  final Widget header, body;
  final EdgeInsetsGeometry padding, margin;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final BoxShadow boxShadow;
  final CrossAxisAlignment columnCrossAxisAlignment;

  const Layout({
    @required this.header,
    @required this.body,
    this.padding = const EdgeInsets.all(20),
    this.margin = const EdgeInsets.all(20),
    this.backgroundColor = CustomColor.BLANCO,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.boxShadow = const BoxShadow(color: Colors.black12, blurRadius: 12),
    this.columnCrossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(_) => Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
          boxShadow: [boxShadow],
        ),
        child: Column(
          crossAxisAlignment: columnCrossAxisAlignment,
          children: [header, body],
        ),
      );
}
