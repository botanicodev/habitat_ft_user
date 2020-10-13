import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Inicio de sesion',
      style: CustomerStyles.SUB_TITULO_2_GRIS_50,
    );
  }
}
