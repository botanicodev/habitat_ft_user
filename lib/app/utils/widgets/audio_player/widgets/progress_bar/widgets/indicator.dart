import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class Indicator extends StatelessWidget {
  const Indicator();

  @override
  Widget build(_) => ClipOval(
        child: Container(
          height: 10,
          width: 10,
          color: CustomColor.CELESTE_OSCURO,
        ),
      );
}
