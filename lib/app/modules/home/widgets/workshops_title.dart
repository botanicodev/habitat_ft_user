import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class WorkshopsTitle extends StatelessWidget {
  const WorkshopsTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 10),
      child: Center(
          child: Text('Talleres', style: CustomerStyles.TITULO_2_CELESTE_OSCURO)),
    );
  }
}
