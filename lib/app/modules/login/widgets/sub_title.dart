import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Inicio de sesion',
      style: TextStyle(
          color: HColors.GRIS_50, fontWeight: FontWeight.w600),
    );
  }
}
