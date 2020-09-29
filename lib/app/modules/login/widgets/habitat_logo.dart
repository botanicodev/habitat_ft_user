import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class HabitatLogo extends StatelessWidget {
  const HabitatLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 115,
      color: HColors.CELESTE_HABITAT,
    );
  }
}