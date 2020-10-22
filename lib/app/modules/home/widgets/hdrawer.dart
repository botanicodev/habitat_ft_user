import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import 'profile.dart';
import 'sign_out.dart';

class HDrawer extends StatelessWidget {
  const HDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: CustomerColors.CELESTE_OSCURO,
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
