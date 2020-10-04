import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/styles.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Inicio de sesion',
      style: HStyles.SUB_TITULO_2_GRIS_50,
    );
  }
}
