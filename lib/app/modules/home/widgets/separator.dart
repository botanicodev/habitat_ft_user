import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class Separator extends StatelessWidget {
  const Separator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 0.5,
              color: HColors.CELESTE_HABITAT,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              'Completados',
              style: HStyles.BOTONES_CELESTE,
            ),
          ),
          Expanded(
            child: Container(
              height: 0.5,
              color: HColors.CELESTE_HABITAT,
            ),
          ),
        ],
      ),
    );
  }
}
