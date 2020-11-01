import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class WorkshopsTitle extends StatelessWidget {
  const WorkshopsTitle();

  String get title => 'Talleres';
  TextStyle get style => CustomerStyles.TITULO_2_CELESTE_OSCURO;

  @override
  Widget build(_) => Text(title, style: style);
}
