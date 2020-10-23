import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class WelcomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(text, style: style);

  get text => '¡Bienvenido!';
  get style => CustomerStyles.TITULO_1_CELESTE;
}
