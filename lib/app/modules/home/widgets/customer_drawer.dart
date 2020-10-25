import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import 'profile.dart';
import 'sign_out.dart';

class CustomerDrawer extends StatelessWidget {
  final Color color;

  const CustomerDrawer({
    this.color = CustomerColors.CELESTE_OSCURO,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: color,
        child: Column(
          children: [
            Profile(),
            Spacer(),
            SignOut(),
          ],
        ),
      ),
    );
  }
}
