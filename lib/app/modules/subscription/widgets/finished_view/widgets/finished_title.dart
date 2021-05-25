import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class FinishedTitle extends StatelessWidget {
  final String title;

  const FinishedTitle({this.title = 'Taller completado'});

  TextStyle get style => CustomerStyles.TITULO_2_BLANCO;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: style);
  }
}
