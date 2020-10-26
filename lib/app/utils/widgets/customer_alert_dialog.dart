import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class CustomerAlertDialog extends StatelessWidget {
  final List<Widget> children;
  final Color backgroundColor;
  final double height, width;
  final MainAxisAlignment columnMainAxisAlignment;
  final ShapeBorder shape;

  const CustomerAlertDialog({
    @required this.children,
    this.backgroundColor = CustomerColors.GRIS_01,
    this.height = 160,
    this.width = 274,
    this.columnMainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      shape: shape,
      content: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: columnMainAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
