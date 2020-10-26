import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import 'widgets/profile_tile/profile_tile.dart';
import 'widgets/sign_out_tile/sign_out_tile.dart';

class CustomerDrawer extends StatelessWidget {
  final Color color;
  final EdgeInsetsGeometry padding;

  const CustomerDrawer({
    this.color = CustomerColors.CELESTE_OSCURO,
    this.padding = const EdgeInsets.only(top: 120, bottom: 44),
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: padding,
        color: color,
        child: Column(
          children: [
            ProfileTile(),
            const Spacer(),
            const SignOutTile(),
          ],
        ),
      ),
    );
  }
}
