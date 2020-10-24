import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class Subtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(text, style: style);

  get text => 'Inicio de sesion';
  get style => CustomerStyles.SUB_TITULO_2_GRIS_50;
}
