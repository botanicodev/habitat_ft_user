import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomerColors.CELESTE_OSCURO,
      child: Center(child: child),
    );
  }
}
