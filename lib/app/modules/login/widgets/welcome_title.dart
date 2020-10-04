import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '¡Bienvenido!',
      style: TextStyle(
          color: HColors.CELESTE_HABITAT,
          fontSize: 30,
          fontWeight: FontWeight.w300),
    );
  }
}
