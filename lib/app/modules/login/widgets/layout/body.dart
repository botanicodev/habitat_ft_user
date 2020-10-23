import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class Body extends StatelessWidget {
  final List<Widget> children;

  const Body({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: decoration,
      child: child,
    );
  }

  get height => 483;
  get width => 340;
  get padding => EdgeInsets.symmetric(horizontal: 18, vertical: 30);

  get decoration => BoxDecoration(
        color: CustomerColors.GRIS_01,
        borderRadius: BorderRadius.circular(8),
      );

  get child => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      );
}
