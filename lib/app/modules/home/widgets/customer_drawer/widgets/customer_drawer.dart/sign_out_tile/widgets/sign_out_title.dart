import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class SignOutTitle extends StatelessWidget {
  const SignOutTitle();

  String get title => '¿Desea cerrar sesion?';
  TextStyle get style => CustomerStyles.TITULO_3_CELESTE;

  @override
  Widget build(_) => Text(title, style: style);
}
