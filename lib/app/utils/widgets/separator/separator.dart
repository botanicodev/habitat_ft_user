import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import 'widgets/line.dart';

class Separator extends StatelessWidget {
  final String value;

  const Separator(this.value);

  TextStyle get style => CustomerStyles.BOTONES_CELESTE;

  @override
  Widget build(_) => Row(children: [
        Line(),
        Text(value, style: style),
        Line(),
      ]);
}
