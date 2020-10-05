import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/styles.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '¡Bienvenido!',
      style: HStyles.TITULO_1_CELESTE,
    );
  }
}
