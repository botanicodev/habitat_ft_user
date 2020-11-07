import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle();

  String get text => '¡Bienvenido!';
  TextStyle get style => CustomerStyles.TITULO_1_CELESTE;

  @override
  Widget build(_) => Text(text, style: style);
}
