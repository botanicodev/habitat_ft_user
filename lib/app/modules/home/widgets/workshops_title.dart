import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/styles.dart';

class WorkshopsTitle extends StatelessWidget {
  const WorkshopsTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 25),
      child: Center(child: Text('Talleres', style: HStyles.TITULO_2_CELESTE_OSCURO)),
    );
  }
}
