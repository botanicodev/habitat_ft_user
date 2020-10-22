import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class AlertTitle extends StatelessWidget {
  final String title;

  const AlertTitle(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: CustomerStyles.TITULO_3_CELESTE,
    );
  }
}
