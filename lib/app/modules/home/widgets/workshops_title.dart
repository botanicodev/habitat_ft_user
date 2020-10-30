import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class WorkshopsTitle extends StatelessWidget {
  final EdgeInsetsGeometry padding;

  const WorkshopsTitle({
    this.padding = const EdgeInsets.only(top: 40, bottom: 10),
  });

  String get title => 'Talleres';
  TextStyle get style => CustomerStyles.TITULO_2_CELESTE_OSCURO;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding,
        child: Center(child: Text(title, style: style)),
      );
}
