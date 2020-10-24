import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class Subtitle extends StatelessWidget {
  const Subtitle();

  @override
  Widget build(BuildContext context) => Text(text, style: style);

  String get text => 'Inicio de sesion';
  TextStyle get style => CustomerStyles.SUB_TITULO_2_GRIS_50;
}
