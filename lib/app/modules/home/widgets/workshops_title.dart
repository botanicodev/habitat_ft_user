import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class WorkshopsTitle extends StatelessWidget {
  const WorkshopsTitle();

  String get title => 'Talleres';
  TextStyle get style => CustomerStyles.TITULO_2_CELESTE_OSCURO;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(title, style: style),
    );
  }
}
