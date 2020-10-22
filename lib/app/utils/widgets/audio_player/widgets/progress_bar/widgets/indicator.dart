import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class Indicator extends StatelessWidget {
  const Indicator();

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 10,
        width: 10,
        color: CustomerColors.CELESTE_OSCURO,
      ),
    );
  }
}
