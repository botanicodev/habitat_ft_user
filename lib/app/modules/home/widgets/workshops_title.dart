import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/styles.dart';

class WorkshopsTitle extends StatelessWidget {
  const WorkshopsTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Talleres', style: HStyles.TITULO_2_CELESTE_OSCURO);
  }
}
