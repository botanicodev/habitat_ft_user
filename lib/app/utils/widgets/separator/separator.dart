import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import 'widgets/line.dart';

class Separator extends StatelessWidget {
  final String value;

  const Separator(this.value);

  TextStyle get style => CustomerStyles.BOTONES_CELESTE;

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxWidth: 900),
      child: Column(
        children: [
          SizedBox(height: 40),
          Row(children: [
            Line(),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: CustomColor.CELESTE_HABITAT,
                fontWeight: FontWeight.bold,
              ),
            ),
            Line(),
          ]),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
