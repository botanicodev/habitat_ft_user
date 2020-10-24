import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle();

  @override
  Widget build(BuildContext context) => Text(text, style: style);

  String get text => '¡Bienvenido!';
  TextStyle get style => CustomerStyles.TITULO_1_CELESTE;
}
