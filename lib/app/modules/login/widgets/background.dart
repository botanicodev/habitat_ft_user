import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 165),
      color: HColors.CELESTE_OSCURO,
      child: Center(child: child),
    );
  }
}